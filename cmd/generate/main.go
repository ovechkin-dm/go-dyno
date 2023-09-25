package main

import (
	"flag"
	"os"
	"text/template"
)

var goTemplate = `
package proxy

import "unsafe"
import "reflect"

var methods = make([]unsafe.Pointer, {{len .}})

func init(){
{{range $idx,$_:= .}}
    methods[{{$idx}}] = unsafe.Pointer(reflect.ValueOf(makeFuncStub{{$idx}}).Pointer())
{{end}}
}

{{range $idx,$_:= .}}
func makeFuncStub{{$idx}}()
{{end}}
`

var asmTemplate = `
#include "textflag.h"
#include "funcdata.h"
#include "go_asm.h"

#define LOCAL_RETVALID 32
#define LOCAL_REGARGS 40

{{range $idx,$_:= .}}

TEXT ·makeFuncStub{{$idx}}(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    ${{$idx}}, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
	ADDQ    $16, AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    ${{$idx}}, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET

{{end}}
`

var armTemplate = `
#include "textflag.h"
#include "funcdata.h"

#define LOCAL_RETVALID 40
#define LOCAL_REGARGS 48

{{range $idx,$_:= .}}
TEXT ·makeFuncStub{{$idx}}(SB),(NOSPLIT|WRAPPER),$432
	NO_LOCAL_POINTERS
	ADD	$LOCAL_REGARGS, RSP, R20
	CALL	runtime·spillArgs(SB)
	MOVD	R0, 8(RSP)	
	MOVD    ${{$idx}}, R26
	MOVD    R26, 24(RSP)
	MOVD    LOCAL_REGARGS(RSP), R26
	MOVD    R26, 16(RSP)
	CALL	·moveMakeFuncArgPtrsCustom(SB)
	MOVD	$argframe+0(FP), R3	
	MOVD	R3, 16(RSP)
	MOVB	$0, LOCAL_RETVALID(RSP)
	ADD	$LOCAL_RETVALID, RSP, R3
	MOVD	R3, 24(RSP)
	ADD	$LOCAL_REGARGS, RSP, R3
	MOVD	R3, 32(RSP)
	MOVD	${{$idx}}, R3
	MOVD    R3, 40(RSP)
	CALL	·callReflectCustom(SB)
	ADD	$LOCAL_REGARGS, RSP, R20
	CALL	runtime·unspillArgs(SB)
	RET
{{end}}
`

var num = flag.Int("m", 200, "")

func main() {
	goT := template.Must(template.New("").Parse(goTemplate))
	mg, err := os.Create("./proxy/gen.go")
	if err != nil {
		panic(err)
	}
	defer mg.Close()

	goT.Execute(mg, make([]struct{}, *num))

	amdasmT := template.Must(template.New("").Parse(asmTemplate))
	ag2, _ := os.Create("./proxy/asm_amd64.s")
	defer ag2.Close()
	amdasmT.Execute(ag2, make([]struct{}, *num))

	armasmT := template.Must(template.New("").Parse(armTemplate))
	ag3, _ := os.Create("./proxy/asm_arm64.s")
	defer ag3.Close()
	armasmT.Execute(ag3, make([]struct{}, *num))

}

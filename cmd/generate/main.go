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

var num = flag.Int("m", 200, "")

func main() {
	goT := template.Must(template.New("").Parse(goTemplate))
	mg, err := os.Create("./internal/proxy/gen.go")
	if err != nil {
		panic(err)
	}
	defer mg.Close()

	goT.Execute(mg, make([]struct{}, *num))

	amdasmT := template.Must(template.New("").Parse(asmTemplate))
	ag2, _ := os.Create("./internal/proxy/asm_amd64.s")
	defer ag2.Close()
	amdasmT.Execute(ag2, make([]struct{}, *num))

}

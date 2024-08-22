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
TEXT ·makeFuncStub{{$idx}}(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
	MOVQ    0(DX), DX
    MOVQ    {{mul $idx 8}}(DX), DX
    MOVQ    (DX), AX
    CALL	AX
    RET
{{end}}`

var armTemplate = `
#include "textflag.h"
#include "funcdata.h"

#define LOCAL_RETVALID 40
#define LOCAL_REGARGS 48

{{range $idx,$_:= .}}
TEXT ·makeFuncStub{{$idx}}(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
	MOVD    0(R26), R26
    MOVD    {{mul $idx 8}}(R26), R26
    MOVD    (R26), R0
    CALL	R0
    RET
{{end}}
`

var num = flag.Int("m", 250, "")

func mul(a, b int) int {
	return a * b
}

var funcMap = template.FuncMap{
	"mul": mul,
}

func main() {
	goT := template.Must(template.New("").Funcs(funcMap).Parse(goTemplate))
	mg, err := os.Create("./proxy/gen.go")
	if err != nil {
		panic(err)
	}
	defer mg.Close()

	goT.Execute(mg, make([]struct{}, *num))

	amdasmT := template.Must(template.New("").Funcs(funcMap).Parse(asmTemplate))
	ag2, _ := os.Create("./proxy/asm_amd64.s")
	defer ag2.Close()
	amdasmT.Execute(ag2, make([]struct{}, *num))

	armasmT := template.Must(template.New("").Funcs(funcMap).Parse(armTemplate))
	ag3, _ := os.Create("./proxy/asm_arm64.s")
	defer ag3.Close()
	armasmT.Execute(ag3, make([]struct{}, *num))

}

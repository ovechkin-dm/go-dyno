//go:build amd64 && go1.21

package proxy

import (
	"unsafe"
)

//go:linkname moveMakeFuncArgPtrs reflect.moveMakeFuncArgPtrs
func moveMakeFuncArgPtrs(ctxt *makeFuncCtxt, args unsafe.Pointer)

//go:linkname callReflect reflect.callReflect
func callReflect(ctxt *makeFuncImpl, frame unsafe.Pointer, retValid *bool, regs unsafe.Pointer)

func callReflectCustom(ctxt unsafe.Pointer, frame unsafe.Pointer, retValid *bool, regs unsafe.Pointer, num int) {
	fp := unsafe.Pointer(uintptr(frame) + 16)
	ds := castStructOf(ctxt)
	callReflect(ds.methods[num].fn, fp, retValid, regs)
}

func moveMakeFuncArgPtrsCustom(ctxt unsafe.Pointer, args unsafe.Pointer, num int) {
	ds := castStructOf(ctxt)
	moveMakeFuncArgPtrs(&ds.methods[num].fn.makeFuncCtxt, args)
}

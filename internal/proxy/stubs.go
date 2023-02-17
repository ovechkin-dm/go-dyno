package proxy

import (
	"unsafe"
)

//go:linkname moveMakeFuncArgPtrs reflect.moveMakeFuncArgPtrs
func moveMakeFuncArgPtrs(ctxt *makeFuncCtxt, args unsafe.Pointer)

//go:linkname callReflect reflect.callReflect
func callReflect(ctxt *makeFuncImpl, frame unsafe.Pointer, retValid *bool, regs unsafe.Pointer)

func callReflectCustom(ctxt *dynamicStruct, frame unsafe.Pointer, retValid *bool, regs unsafe.Pointer, num int) {
	p := unsafe.Pointer(uintptr(frame) + 8)
	callReflect(ctxt.methods[num].fn, p, retValid, regs)
}

func moveMakeFuncArgPtrsCustom(ctxt *dynamicStruct, args unsafe.Pointer, num int) {
	moveMakeFuncArgPtrs(&ctxt.methods[num].fn.makeFuncCtxt, args)
}

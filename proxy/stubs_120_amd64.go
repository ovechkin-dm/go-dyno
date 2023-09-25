//go:build amd64 && (go1.18 || go1.19 || go1.20) && !go1.21

package proxy

import (
	"unsafe"
)

//go:linkname moveMakeFuncArgPtrs reflect.moveMakeFuncArgPtrs
func moveMakeFuncArgPtrs(ctxt *makeFuncCtxt, args unsafe.Pointer)

//go:linkname callReflect reflect.callReflect
func callReflect(ctxt *makeFuncImpl, frame unsafe.Pointer, retValid *bool, regs unsafe.Pointer)

func callReflectCustom(ctxt *DynamicStruct, frame unsafe.Pointer, retValid *bool, regs unsafe.Pointer, num int) {
	fp := unsafe.Pointer(uintptr(frame) + 8)
	callReflect(ctxt.methods[num].fn, fp, retValid, regs)
}

func moveMakeFuncArgPtrsCustom(ctxt *DynamicStruct, args unsafe.Pointer, num int) {
	moveMakeFuncArgPtrs(&ctxt.methods[num].fn.makeFuncCtxt, args)
}

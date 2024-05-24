package proxy

import (
	"reflect"
	"unsafe"
)

var stubStructType = reflect.StructOf([]reflect.StructField{
	{
		Name:      DelegateFieldName,
		Type:      reflect.ValueOf(new(Empty)).Elem().Type(),
		Anonymous: true,
	},
	{
		Name:      DynamicStructFieldName,
		Type:      reflect.TypeOf(&DynamicStruct{}),
		Anonymous: false,
		PkgPath:   reflect.TypeOf(&DynamicStruct{}).PkgPath(),
	},
})

//go:linkname resolveTextOff reflect.resolveTextOff
func resolveTextOff(rtype unsafe.Pointer, off int32) unsafe.Pointer

//go:linkname resolveReflectText reflect.resolveReflectText
func resolveReflectText(ptr unsafe.Pointer) int32

//go:linkname moveMakeFuncArgPtrs reflect.moveMakeFuncArgPtrs
func moveMakeFuncArgPtrs(ctxt *makeFuncCtxt, args unsafe.Pointer)

//go:linkname callReflect reflect.callReflect
func callReflect(ctxt *makeFuncImpl, frame unsafe.Pointer, retValid *bool, regs unsafe.Pointer)

func callReflectCustom(ctxt unsafe.Pointer, frame unsafe.Pointer, retValid *bool, regs unsafe.Pointer, num int) {
	ds := castStructOf(ctxt)
	fp := unsafe.Pointer(uintptr(frame) + FramePointerOffset)
	callReflect(ds.methods[num].fn, fp, retValid, regs)
}

func moveMakeFuncArgPtrsCustom(ctxt unsafe.Pointer, args unsafe.Pointer, num int) {
	ds := castStructOf(ctxt)
	moveMakeFuncArgPtrs(&ds.methods[num].fn.makeFuncCtxt, args)
}

func castStructOf(ctx unsafe.Pointer) *DynamicStruct {
	emptyStruct := reflect.ValueOf(DynamicStruct{})
	rawReflectValue := refValue{
		typ:  (*rtype)(reflect.ValueOf(stubStructType).UnsafePointer()),
		ptr:  ctx,
		flag: (*refValue)(unsafe.Pointer(&emptyStruct)).flag,
	}
	rv := (*reflect.Value)(unsafe.Pointer(&rawReflectValue))
	ds := rv.Field(1).Interface().(*DynamicStruct)
	return ds
}

package proxy

import (
	"reflect"
	"unsafe"
)

//go:linkname resolveTextOff reflect.resolveTextOff
func resolveTextOff(rtype unsafe.Pointer, off int32) unsafe.Pointer

//go:linkname resolveReflectText reflect.resolveReflectText
func resolveReflectText(ptr unsafe.Pointer) int32

func castStructOf(ctx unsafe.Pointer) *DynamicStruct {
	tp := reflect.StructOf([]reflect.StructField{
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
	emptyStruct := reflect.ValueOf(DynamicStruct{})
	rawReflectValue := refValue{
		typ:  (*rtype)(reflect.ValueOf(tp).UnsafePointer()),
		ptr:  ctx,
		flag: (*refValue)(unsafe.Pointer(&emptyStruct)).flag,
	}
	rv := (*reflect.Value)(unsafe.Pointer(&rawReflectValue))
	ds := rv.Field(1).Interface().(*DynamicStruct)
	return ds
}

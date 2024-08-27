package proxy

import (
	"unsafe"
)

//go:linkname addReflectOff reflect.addReflectOff
func addReflectOff(ptr unsafe.Pointer) int32

func resolveReflectName(n Name) int32 {
	return addReflectOff(unsafe.Pointer(n.Bytes))
}

func resolveReflectText(ptr unsafe.Pointer) int32 {
	return addReflectOff(ptr)
}

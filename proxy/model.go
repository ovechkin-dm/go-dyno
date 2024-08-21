package proxy

import (
	"unsafe"
)

type refValue struct {
	typ  *rtype
	ptr  unsafe.Pointer
	flag uintptr
}

type rtype struct {
	size       uintptr
	ptrdata    uintptr
	hash       uint32
	tflag      uint8
	align      uint8
	fieldAlign uint8
	kind       uint8
	equal      func(unsafe.Pointer, unsafe.Pointer) bool
	gcdata     *byte
	str        int32
	ptrToThis  int32
}

type Name struct {
	Bytes *byte
}

type StructType struct {
	rtype
	PkgPath Name
	Fields  []StructField
}

type StructField struct {
	Name   Name
	Typ    *rtype
	Offset uintptr
}

type UncommonType struct {
	PkgPath int32
	Mcount  uint16
	Xcount  uint16
	Moff    uint32
	_       uint32
}

type structTypeUncommon struct {
	StructType
	u UncommonType
}

type Method struct {
	Name int32
	Mtyp int32
	Ifn  int32
	Tfn  int32
}

type Empty interface {
}

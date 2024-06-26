package proxy

import (
	"fmt"
	"reflect"
	"unsafe"
)

type DynamicStruct struct {
	methods    []*methodContext
	arr        []int64
	IFaceValue reflect.Value
}

func (d *DynamicStruct) String() string {
	return fmt.Sprintf("DynamicProxy[%v]", d.IFaceValue.Type())
}

type methodContext struct {
	fn *makeFuncImpl
	tp reflect.Type
	rv reflect.Value
}

type refValue struct {
	typ  *rtype
	ptr  unsafe.Pointer
	flag uintptr
}

type makeFuncImpl struct {
	makeFuncCtxt
	ftyp *funcType
	fn   func([]reflect.Value) []reflect.Value
}

type makeFuncCtxt struct {
	fn      uintptr
	stack   uintptr
	argLen  uintptr
	regPtrs [2]uint8
}

type funcType struct {
	rtype
	inCount  uint16
	outCount uint16
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

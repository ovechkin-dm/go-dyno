package proxy

import (
	"reflect"
	"unsafe"
)

type StructValue struct {
	typ uintptr
}

type IFaceValue struct {
	Typ  uintptr
	Ptr  *NonEmptyInterface
	Flag uintptr
}

type NonEmptyInterface struct {
	Itab *itab
	Word unsafe.Pointer
}

type itab struct {
	ityp uintptr
	typ  uintptr
	hash uint32
	_    [4]byte
	fun  [260]unsafe.Pointer
}

type DynamicStruct struct {
	methods          []*methodContext
	arr              []int64
	IFaceValue       reflect.Value
	IFaceValueSource *IFaceValue
}

type methodContext struct {
	fn *makeFuncImpl
	tp reflect.Type
	rv reflect.Value
}

type MethodInfo struct {
	Num          int
	Name         string
	ReflectValue reflect.Value
	Type         reflect.Method
}

type refValue struct {
	typ *rtype
	ptr unsafe.Pointer
	uintptr
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

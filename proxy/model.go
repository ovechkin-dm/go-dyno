package proxy

import (
	"fmt"
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

func (d *DynamicStruct) String() string {
	return fmt.Sprintf("DynamicProxy[%v]", d.IFaceValue.Type())
}

func UnsafeCast[T any](v *DynamicStruct) T {
	ifaceInstance := new(T)
	ii := reflect.ValueOf(ifaceInstance).Elem()
	ifaceValue := (*IFaceValue)(unsafe.Pointer(&ii))
	ifaceValue.Ptr.Word = v.IFaceValueSource.Ptr.Word
	ifaceValue.Ptr.Itab = v.IFaceValueSource.Ptr.Itab
	ifaceValue.Flag = v.IFaceValueSource.Flag
	ifaceValue.Typ = v.IFaceValueSource.Typ
	return *ifaceInstance
}

type methodContext struct {
	fn *makeFuncImpl
	tp reflect.Type
	rv reflect.Value
}

type MethodInfo struct {
	Name         string
	ReflectValue reflect.Value
	Type         reflect.Method
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

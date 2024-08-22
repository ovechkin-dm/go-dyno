package proxy

import (
	"errors"
	"reflect"
	"unsafe"
)

type Stringer interface {
	String() string
}

const DelegateFieldName = "Delegate"
const StringerFieldName = "Stringer"
const DummyField = "dummy"
const MethodsFieldName = "Methods"

const DynamicProxyName = "DynamicProxy"

func Create[T any](handler func(m reflect.Method, values []reflect.Value) []reflect.Value) (T, error) {
	ifaceInstance := new(T)
	v := reflect.ValueOf(ifaceInstance).Elem()
	if v.Type().Kind() != reflect.Interface {
		return *ifaceInstance, errors.New("cannot create proxy for non-interface type")
	}

	tp := reflect.StructOf([]reflect.StructField{
		{
			Name:      MethodsFieldName,
			Type:      reflect.ValueOf(&[]unsafe.Pointer{}).Type(),
			Anonymous: false,
		},
		{
			Name:      DelegateFieldName,
			Type:      reflect.ValueOf(ifaceInstance).Elem().Type(),
			Anonymous: true,
		},
		{
			Name:      StringerFieldName,
			Type:      reflect.ValueOf(new(Stringer)).Elem().Type(),
			Anonymous: true,
		},
		{
			Name:      DummyField,
			Type:      reflect.ValueOf(ifaceInstance).Elem().Type(),
			Anonymous: false,
			PkgPath:   v.Type().PkgPath(),
		},
	})

	s := reflect.New(tp).Elem()
	numMethods := s.NumMethod()

	smethods := make([]unsafe.Pointer, numMethods)
	s.FieldByName(MethodsFieldName).Set(reflect.ValueOf(&smethods))

	abiType := (*structTypeUncommon)(reflect.ValueOf(tp).UnsafePointer())
	abiType.u.PkgPath = resolveReflectName(abiType.PkgPath)
	methodPtr := unsafe.Pointer(uintptr(unsafe.Pointer(&abiType.u)) + uintptr(abiType.u.Moff))

	structMethods := unsafe.Slice((*Method)(methodPtr), numMethods)
	for i := range structMethods {
		curMethod := &structMethods[i]
		if s.Type().Method(i).Name == "String" {
			offset := resolveReflectText(reflect.ValueOf(StringRepr).UnsafePointer())
			curMethod.Tfn = offset
			curMethod.Ifn = offset
		} else {
			method := createMethod(s, v, handler, i)
			smethods[i] = method
			offset := resolveReflectText(methods[i])
			curMethod.Tfn = offset
			curMethod.Ifn = offset
		}

	}
	result := s.Interface().(T)
	return result, nil
}

func createMethod(structOfProxy reflect.Value, sourceInterface reflect.Value, handler func(m reflect.Method, values []reflect.Value) []reflect.Value, num int) unsafe.Pointer {
	methodValue := structOfProxy.Method(num)
	tp := methodValue.Type()
	receiverType := reflect.TypeOf(reflect.TypeOf(uintptr(0)))
	receiverArgOffsetType := reflect.TypeOf([FramePointerOffset]uintptr{})
	inArgs := []reflect.Type{receiverType, receiverArgOffsetType}
	outArgs := make([]reflect.Type, 0)

	for nin := 0; nin < tp.NumIn(); nin++ {
		inArgs = append(inArgs, tp.In(nin))
	}
	for nout := 0; nout < tp.NumOut(); nout++ {
		outArgs = append(outArgs, tp.Out(nout))
	}
	ftype := reflect.FuncOf(inArgs, outArgs, tp.IsVariadic())
	methodName := structOfProxy.Type().Method(num).Name
	methodType, ok := sourceInterface.Type().MethodByName(methodName)
	if !ok {
		methodType = structOfProxy.Type().Method(num)
	}
	hf := func(values []reflect.Value) []reflect.Value {
		withoutReceiver := values[2:]
		return handler(methodType, withoutReceiver)
	}
	rv := reflect.MakeFunc(ftype, hf)
	ptr := (*refValue)(unsafe.Pointer(&rv))
	return ptr.ptr
}

func StringRepr() string {
	return DynamicProxyName
}

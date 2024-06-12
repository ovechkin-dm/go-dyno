package proxy

import (
	"errors"
	"reflect"
	"unsafe"
)

const DynamicStructFieldName = "DynamicStruct"
const DelegateFieldName = "Delegate"
const DummyField = "dummy"

func Create[T any](handler func(m reflect.Method, values []reflect.Value) []reflect.Value) (T, error) {
	ifaceInstance := new(T)
	v := reflect.ValueOf(ifaceInstance).Elem()
	if v.Type().Kind() != reflect.Interface {
		return *ifaceInstance, errors.New("cannot create proxy for non-interface type")
	}

	tp := reflect.StructOf([]reflect.StructField{
		{
			Name:      DelegateFieldName,
			Type:      reflect.ValueOf(ifaceInstance).Elem().Type(),
			Anonymous: true,
		},
		{
			Name:      DynamicStructFieldName,
			Type:      reflect.TypeOf(&DynamicStruct{}),
			Anonymous: false,
		},
		{
			Name:      DummyField,
			Type:      reflect.ValueOf(ifaceInstance).Elem().Type(),
			Anonymous: false,
			PkgPath:   v.Type().PkgPath(),
		},
	})

	s := reflect.New(tp).Elem()

	abiType := (*structTypeUncommon)(reflect.ValueOf(tp).UnsafePointer())
	abiType.u.PkgPath = resolveReflectName(abiType.PkgPath)

	numMethods := s.NumMethod()
	methodPtr := addChecked(unsafe.Pointer(&abiType.u), uintptr(abiType.u.Moff))

	var ds = &DynamicStruct{
		IFaceValue: v,
	}

	ds.methods = make([]*methodContext, numMethods)
	structMethods := unsafe.Slice((*Method)(methodPtr), numMethods)
	for i := range structMethods {
		curMethod := &structMethods[i]
		method := createMethod(s, v, ds, handler, i)
		offset := resolveReflectText(reflect.ValueOf(methods[i]).UnsafePointer())
		curMethod.Tfn = offset
		curMethod.Ifn = offset
		ds.methods[i] = method
	}
	s.FieldByName(DynamicStructFieldName).Set(reflect.ValueOf(ds))
	result := s.Interface().(T)

	return result, nil
}

func createMethod(
	structOfProxy reflect.Value,
	sourceInterface reflect.Value,
	d *DynamicStruct,
	handler func(m reflect.Method, values []reflect.Value) []reflect.Value, num int,
) *methodContext {
	methodValue := structOfProxy.Method(num)
	tp := methodValue.Type()
	inArgs := make([]reflect.Type, 0)
	outArgs := make([]reflect.Type, 0)
	inArgs = append(inArgs, reflect.TypeOf(d))
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
		withoutReceiver := values[1:]
		return handler(methodType, withoutReceiver)
	}
	rv := reflect.MakeFunc(ftype, hf)
	ptr := (*refValue)(unsafe.Pointer(&rv))
	mfi := (*makeFuncImpl)(ptr.ptr)
	result := &methodContext{
		fn: mfi,
		tp: tp,
		rv: rv,
	}
	return result
}

func addChecked(p unsafe.Pointer, x uintptr) unsafe.Pointer {
	return unsafe.Pointer(uintptr(p) + x)
}

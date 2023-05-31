package proxy

import (
	"errors"
	"reflect"
	"unsafe"
)

func Create[T any](handler func(m *MethodInfo, values []reflect.Value) []reflect.Value) (T, error) {
	ifaceInstance := new(T)
	v := reflect.ValueOf(ifaceInstance).Elem()
	if v.Type().Kind() != reflect.Interface {
		return *ifaceInstance, errors.New("cannot create proxy for non-interface type")
	}
	numMethods := v.NumMethod()

	var ds = &dynamicStruct{}
	sv := reflect.ValueOf(ds)
	structValue := (*refValue)(unsafe.Pointer(&sv))
	ifaceValue := (*iFaceValue)(unsafe.Pointer(&v))
	instancePtr := unsafe.Pointer(ds)
	ifaceValue.ptr.word = instancePtr

	arr := make([]int64, unsafe.Sizeof(itab{}))
	ds.arr = arr
	ntab := (*itab)(unsafe.Pointer(&arr[0]))
	ntab.ityp = ifaceValue.typ
	ntab.typ = uintptr(unsafe.Pointer(structValue.typ))
	ifaceValue.ptr.itab = ntab

	ds.methods = make([]*methodContext, numMethods)
	for i := 0; i < numMethods; i++ {
		methodCtx := createMethod(v, ds, handler, i)
		ifaceValue.ptr.itab.fun[i] = unsafe.Pointer(reflect.ValueOf(methods[i]).Pointer())
		ds.methods[i] = methodCtx
	}

	return *ifaceInstance, nil
}

func createMethod(
	ifaceValue reflect.Value,
	d *dynamicStruct,
	handler func(m *MethodInfo, values []reflect.Value) []reflect.Value, num int,
) *methodContext {
	methodValue := ifaceValue.Method(num)
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
	methodInfo := &MethodInfo{
		Num:          num,
		ReflectValue: methodValue,
		Name:         ifaceValue.Type().Method(num).Name,
		Type:         ifaceValue.Type().Method(num),
	}
	hf := func(values []reflect.Value) []reflect.Value {
		withoutReceiver := values[1:]
		return handler(methodInfo, withoutReceiver)
	}
	rv := reflect.MakeFunc(ftype, hf)
	ptr := (*refValue)(unsafe.Pointer(&rv))
	mfi := (*makeFuncImpl)(ptr.ptr)
	result := &methodContext{
		fn: mfi,
		tp: tp,
	}
	return result
}

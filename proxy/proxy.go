package proxy

import (
	"errors"
	"reflect"
	"unsafe"
)

const DynamicStructFieldName = "DynamicStruct"
const DelegateFieldName = "Delegate"

func Create2[T any](handler func(m *MethodInfo, values []reflect.Value) []reflect.Value) (T, error) {
	ifaceInstance := new(T)
	v := reflect.ValueOf(ifaceInstance).Elem()
	ifaceValue := (*IFaceValue)(unsafe.Pointer(&v))
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
			PkgPath:   reflect.TypeOf(&DynamicStruct{}).PkgPath(),
		},
	})
	s := reflect.New(tp).Elem()
	if v.Type().Kind() != reflect.Interface {
		return *ifaceInstance, errors.New("cannot create proxy for non-interface type")
	}
	abitp := (*structTypeUncommon)(reflect.ValueOf(tp).UnsafePointer())
	numMethods := s.NumMethod()
	x := (*[1 << 16]Method)(addChecked(unsafe.Pointer(&abitp.u), uintptr(abitp.u.Moff)))
	var ds = &DynamicStruct{
		IFaceValue:       v,
		IFaceValueSource: ifaceValue,
	}
	ds.methods = make([]*methodContext, numMethods)
	for i := 0; i < numMethods; i++ {
		method := createMethod(s, ds, handler, i)
		offset := resolveReflectText(unsafe.Pointer(reflect.ValueOf(methods[i]).Pointer()))
		x[i].Tfn = offset
		x[i].Ifn = offset
		ds.methods[i] = method
	}
	s.FieldByName(DynamicStructFieldName).Set(reflect.ValueOf(ds))
	return s.Interface().(T), nil
}

func Create[T any](handler func(m *MethodInfo, values []reflect.Value) []reflect.Value) (T, error) {
	ifaceInstance := new(T)
	v := reflect.ValueOf(ifaceInstance).Elem()
	ifaceValue := (*IFaceValue)(unsafe.Pointer(&v))
	if v.Type().Kind() != reflect.Interface {
		return *ifaceInstance, errors.New("cannot create proxy for non-interface type")
	}
	numMethods := v.NumMethod()

	var ds = &DynamicStruct{
		IFaceValue:       v,
		IFaceValueSource: ifaceValue,
	}
	sv := reflect.ValueOf(ds)
	st := (*refValue)(unsafe.Pointer(&sv)).typ
	instancePtr := unsafe.Pointer(ds)
	ifaceValue.Ptr.Word = instancePtr

	arr := make([]int64, unsafe.Sizeof(itab{}))
	ds.arr = arr
	ntab := (*itab)(unsafe.Pointer(&arr[0]))
	ntab.ityp = ifaceValue.Typ
	ntab.typ = uintptr(unsafe.Pointer(st))
	ifaceValue.Ptr.Itab = ntab

	ds.methods = make([]*methodContext, numMethods)
	for i := 0; i < numMethods; i++ {
		methodCtx := createMethod(v, ds, handler, i)
		ifaceValue.Ptr.Itab.fun[i] = unsafe.Pointer(reflect.ValueOf(methods[i]).Pointer())
		ds.methods[i] = methodCtx
	}

	return *ifaceInstance, nil
}

func createMethod(
	ifaceValue reflect.Value,
	d *DynamicStruct,
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
		rv: rv,
	}
	return result
}

func addChecked(p unsafe.Pointer, x uintptr) unsafe.Pointer {
	return unsafe.Pointer(uintptr(p) + x)
}

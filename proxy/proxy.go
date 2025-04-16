package proxy

import (
	"errors"
	"reflect"
	"unsafe"

	"github.com/ovechkin-dm/go-dyno/pkg/dynoconfig"
)

type Stringer interface {
	String() string
}

const (
	DelegateFieldName = "Delegate"
	StringerFieldName = "Stringer"
	DummyField        = "dummy"
	MethodsFieldName  = "Methods"
	ConfigField       = "Config"
)

const DynamicProxyName = "DynamicProxy"

func Create(handler func(m reflect.Method, values []reflect.Value) []reflect.Value, cfg *dynoconfig.Config, t reflect.Type) (any, error) {
	if t.Kind() != reflect.Interface {
		return nil, errors.New("cannot create proxy for non-interface type")
	}

	tp := reflect.StructOf([]reflect.StructField{
		{
			Name:      MethodsFieldName,
			Type:      reflect.ValueOf(&[]unsafe.Pointer{}).Type(),
			Anonymous: false,
		},
		{
			Name:      DelegateFieldName,
			Type:      t,
			Anonymous: true,
		},
		{
			Name:      StringerFieldName,
			Type:      reflect.ValueOf(new(Stringer)).Elem().Type(),
			Anonymous: true,
		},
		{
			Name:      DummyField,
			Type:      t,
			Anonymous: false,
			PkgPath:   t.PkgPath(),
		},
		{
			Name:      ConfigField,
			Type:      reflect.TypeOf(cfg),
			Anonymous: false,
			PkgPath:   reflect.TypeOf(cfg).PkgPath(),
		},
	})

	s := reflect.New(tp).Elem()
	numMethods := s.NumMethod()
	smethods := make([]unsafe.Pointer, numMethods)
	s.FieldByName(ConfigField).Set(reflect.ValueOf(cfg))
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
			method := createMethod(s, t, handler, i)
			smethods[i] = method
			offset := resolveReflectText(methods[i])
			curMethod.Tfn = offset
			curMethod.Ifn = offset
		}

	}
	result := s.Interface()
	return result, nil
}

func createMethod(
	structOfProxy reflect.Value,
	sourceType reflect.Type,
	handler func(m reflect.Method, values []reflect.Value) []reflect.Value,
	num int,
) unsafe.Pointer {
	methodValue := structOfProxy.Method(num)
	tp := methodValue.Type()
	receiverType := reflect.TypeOf(reflect.TypeOf(0))
	receiverArgOffsetType := reflect.TypeOf([FramePointerOffset]int{})
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
	methodType, ok := sourceType.MethodByName(methodName)
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

func GetConfig(value any) (*dynoconfig.Config, error) {
	v := reflect.ValueOf(value)
	if v.Kind() != reflect.Struct {
		return nil, errors.New("value must be a struct")
	}
	configField := v.FieldByName(ConfigField)
	if !configField.IsValid() {
		return nil, errors.New("config field not found")
	}
	result, ok := configField.Interface().(*dynoconfig.Config)
	if !ok {
		return nil, errors.New("config field is not of type *dynoconfig.Config")
	}
	return result, nil
}

func StringRepr() string {
	return DynamicProxyName
}

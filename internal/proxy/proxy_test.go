package proxy

import (
	"reflect"
	"testing"
)

type MyInterface interface {
	Foo(a int) int
}

func TestCreate(t *testing.T) {
	v, err := Create[MyInterface](func(m *MethodInfo, values []reflect.Value) []reflect.Value {
		return []reflect.Value{reflect.ValueOf(10)}
	})
	if err != nil {
		t.Error(err)
	}
	r := v.Foo(20)
	if r != 10 {
		t.FailNow()
	}
}

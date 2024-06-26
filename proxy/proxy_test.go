package proxy

import (
	"reflect"
	"testing"
)

type MyInterface interface {
	Foo(a int) int
}

type PrivateIface interface {
	privateMethod() int
}

func TestCreate(t *testing.T) {
	v, err := Create[MyInterface](func(m reflect.Method, values []reflect.Value) []reflect.Value {
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

func TestPrivateIface(t *testing.T) {
	p, err := Create[PrivateIface](func(m reflect.Method, values []reflect.Value) []reflect.Value {
		return []reflect.Value{reflect.ValueOf(10)}
	})
	if err != nil {
		t.FailNow()
	}
	result := p.privateMethod()
	if result != 10 {
		t.FailNow()
	}
}

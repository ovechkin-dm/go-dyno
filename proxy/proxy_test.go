package proxy

import (
	"fmt"
	"reflect"
	"testing"
)

type MyInterface interface {
	Foo(a int) int
}

type PrivateIface interface {
	privateMethod() int
}

type Iface interface {
	Test(i int, j int, a [2]int, f [2]float64) int
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

func TestStackAlign(t *testing.T) {
	var args []any
	p, err := Create[Iface](func(m reflect.Method, values []reflect.Value) []reflect.Value {
		for i := range values {
			args = append(args, values[i].Interface())
		}
		return []reflect.Value{reflect.ValueOf(values[0].Interface().(int) + 1)}
	})
	if err != nil {
		t.FailNow()
	}
	result := p.Test(10, 20, [2]int{123, 124}, [2]float64{123.1, 124.2})
	if args[0] != 10 || args[1] != 20 || args[2] != [2]int{123, 124} || args[3] != [2]float64{123.1, 124.2} {
		fmt.Println("Got wrong args: ", args)
		t.FailNow()
	}
	if result != 11 {
		fmt.Println("Got wrong result: ", result)
		t.FailNow()
	}
}

package tests

import (
	"fmt"
	"reflect"
	"testing"

	"github.com/ovechkin-dm/go-dyno/pkg/dyno"
)

type Foo interface {
	Bar() string
	Baz() int
	Arr(arr [30]int, i int) int
	privateMethod() int
	MultiArg(i int, j int, a [2]int, f [2]float64) int
}

func TestToString(t *testing.T) {
	proxy, err := dyno.Dynamic[Foo](func(m reflect.Method, values []reflect.Value) []reflect.Value {
		return []reflect.Value{reflect.ValueOf("Hello")}
	})
	if err != nil {
		t.Fatal(err)
	}
	s := fmt.Sprintf("%v", proxy)
	if s != "DynamicProxy" {
		t.Fatalf("Expected 'DynamicProxy', got '%s'", s)
	}
}

func TestSingleMethod(t *testing.T) {
	proxy, err := dyno.Dynamic[Foo](func(m reflect.Method, values []reflect.Value) []reflect.Value {
		return []reflect.Value{reflect.ValueOf("Hello")}
	})
	if err != nil {
		t.Fatal(err)
	}
	s := proxy.Bar()
	if s != "Hello" {
		t.Fatalf("Expected 'Hello', got '%s'", s)
	}
}

func TestMultipleMethods(t *testing.T) {
	proxy, err := dyno.Dynamic[Foo](func(m reflect.Method, values []reflect.Value) []reflect.Value {
		switch m.Name {
		case "Bar":
			return []reflect.Value{reflect.ValueOf("Hello")}
		default:
			return []reflect.Value{reflect.ValueOf(42)}
		}
	})
	if err != nil {
		t.Fatal(err)
	}
	s := proxy.Bar()
	if s != "Hello" {
		t.Fatalf("Expected 'Hello', got '%s'", s)
	}
	i := proxy.Baz()
	if i != 42 {
		t.Fatalf("Expected 42, got %d", i)
	}
}

func TestStackAlignment(t *testing.T) {
	var arr [30]int
	for i := 0; i < 30; i++ {
		arr[i] = i
	}
	proxy, err := dyno.Dynamic[Foo](func(m reflect.Method, values []reflect.Value) []reflect.Value {
		sum := 0
		for i := 0; i < len(values[0].Interface().([30]int)); i++ {
			sum += values[0].Interface().([30]int)[i]
		}
		return []reflect.Value{reflect.ValueOf(sum + int(values[1].Int()))}
	})
	if err != nil {
		t.Fatal(err)
	}
	result := proxy.Arr(arr, 12)
	if result != 447 {
		t.Fatalf("Expected 447, got %d", result)
	}
}

func TestPrivateIface(t *testing.T) {
	p, err := dyno.Dynamic[Foo](func(m reflect.Method, values []reflect.Value) []reflect.Value {
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
	p, err := dyno.Dynamic[Foo](func(m reflect.Method, values []reflect.Value) []reflect.Value {
		for i := range values {
			args = append(args, values[i].Interface())
		}
		return []reflect.Value{reflect.ValueOf(values[0].Interface().(int) + 1)}
	})
	if err != nil {
		t.FailNow()
	}
	result := p.MultiArg(10, 20, [2]int{123, 124}, [2]float64{123.1, 124.2})
	if args[0] != 10 || args[1] != 20 || args[2] != [2]int{123, 124} || args[3] != [2]float64{123.1, 124.2} {
		fmt.Println("Got wrong args: ", args)
		t.FailNow()
	}
	if result != 11 {
		fmt.Println("Got wrong result: ", result)
		t.FailNow()
	}
}

func TestCreateByType(t *testing.T) {
	tp := reflect.ValueOf(new(Foo)).Elem().Type()
	proxy, err := dyno.DynamicByType(func(m reflect.Method, values []reflect.Value) []reflect.Value {
		return []reflect.Value{reflect.ValueOf("Hello")}
	}, tp)
	if err != nil {
		t.Fatal(err)
	}
	foo := proxy.(Foo)
	s := foo.Bar()
	if s != "Hello" {
		t.Fatalf("Expected 'Hello', got '%s'", s)
	}
}

package tests

import (
	"fmt"
	"github.com/ovechkin-dm/go-dyno/pkg/dyno"
	"reflect"
	"testing"
)

type Foo interface {
	Bar() string
	Baz() int
	Arr(arr [30]int, i int) int
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

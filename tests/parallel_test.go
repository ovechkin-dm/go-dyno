package tests

import (
	"reflect"
	"testing"

	"github.com/ovechkin-dm/go-dyno/pkg/dyno"
)

type FooPar interface {
	Bar() string
}

func TestParallel(t *testing.T) {
	for i := 0; i < 10; i++ {
		t.Run("subtest", func(t *testing.T) {
			t.Parallel()
			tp := reflect.ValueOf(new(FooPar)).Elem().Type()
			proxy, err := dyno.DynamicByType(func(m reflect.Method, values []reflect.Value) []reflect.Value {
				return []reflect.Value{reflect.ValueOf("Hello")}
			}, tp)
			if err != nil {
				t.Fatal(err)
			}
			foo := proxy.(FooPar)
			s := foo.Bar()
			if s != "Hello" {
				t.Fatalf("Expected 'Hello', got '%s'", s)
			}
		})
	}
}

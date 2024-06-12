//go:build go1.18

package dyno

import (
	"github.com/ovechkin-dm/go-dyno/proxy"
	"reflect"
)

func Dynamic[T any](handler func(m reflect.Method, values []reflect.Value) []reflect.Value) (T, error) {
	return proxy.Create[T](func(m reflect.Method, values []reflect.Value) []reflect.Value {
		return handler(m, values)
	})
}

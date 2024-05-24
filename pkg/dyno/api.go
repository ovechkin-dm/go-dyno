//go:build go1.18

package dyno

import (
	proxy2 "github.com/ovechkin-dm/go-dyno/proxy"
	"reflect"
)

type Method struct {
	Type reflect.Method
	Name string
}

type ProxyHandler interface {
	Handle(m *Method, values []reflect.Value) []reflect.Value
}

func Dynamic[T any](handler ProxyHandler) (T, error) {
	return proxy2.Create[T](func(m *proxy2.MethodInfo, values []reflect.Value) []reflect.Value {
		method := &Method{
			Type: m.Type,
			Name: m.Name,
		}
		return handler.Handle(method, values)
	})
}

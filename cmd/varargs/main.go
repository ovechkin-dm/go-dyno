package main

import (
	"fmt"
	"github.com/ovechkin-dm/go-dyno/pkg/dyno"
	"reflect"
)

type Iface interface {
	Test(args ...int) int
}

type Handler struct {
}

func (h *Handler) Handle(m *dyno.Method, values []reflect.Value) []reflect.Value {
	m.Type.Type.NumIn()
	ifaces := make([]any, 0)
	for i := range values {
		ii := values[i].Interface()
		ifaces = append(ifaces, ii)
		fmt.Println(ii)
	}
	return []reflect.Value{reflect.ValueOf(values[0].Interface().(int) + 1)}
}

func main() {
	h := Handler{}
	p, err := dyno.Dynamic[Iface](&h)
	if err != nil {
		panic(err)
	}
	p.Test(10, 20, 30)
}

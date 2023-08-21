package main

import (
	"fmt"
	"github.com/ovechkin-dm/go-dyno/pkg/dyno"
	"reflect"
)

type Iface interface {
	Test(i int) int
}

type Handler struct {
}

func (h *Handler) Handle(m *dyno.Method, values []reflect.Value) []reflect.Value {
	return []reflect.Value{reflect.ValueOf(values[0].Interface().(int) + 1)}
}

func main() {
	fmt.Println("hello, ARM")
	h := Handler{}
	p, err := dyno.Dynamic[Iface](&h)
	if err != nil {
		panic(err)
	}
	result := p.Test(10)
	fmt.Println(result)
}

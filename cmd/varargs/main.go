package main

import (
	"fmt"
	"github.com/ovechkin-dm/go-dyno/pkg/dyno"
	"reflect"
)

type Iface interface {
	Test(args ...int) int
}

func Handle(m reflect.Method, values []reflect.Value) []reflect.Value {
	ifaces := make([]any, 0)
	for i := range values {
		ii := values[i].Interface()
		ifaces = append(ifaces, ii)
		fmt.Println(ii)
	}
	return []reflect.Value{reflect.ValueOf(values[0].Interface().(int) + 1)}
}

func main() {
	p, err := dyno.Dynamic[Iface](Handle)
	if err != nil {
		panic(err)
	}
	p.Test(10, 20, 30)
}

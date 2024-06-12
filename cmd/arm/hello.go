package main

import (
	"fmt"
	"github.com/ovechkin-dm/go-dyno/pkg/dyno"
	"reflect"
)

type Iface interface {
	Test(i int, j int, a [2]int, f [2]float64) int
}

func Handle(m reflect.Method, values []reflect.Value) []reflect.Value {
	for i := 0; i < m.Type.NumIn(); i++ {
		fmt.Println(m.Type.In(i))
	}
	for i := range values {
		fmt.Println(values[i].Interface())
	}
	return []reflect.Value{reflect.ValueOf(values[0].Interface().(int) + 1)}
}

func main() {
	fmt.Println("hello, ARM")
	p, err := dyno.Dynamic[Iface](Handle)
	if err != nil {
		panic(err)
	}
	result := p.Test(10, 20, [2]int{123, 124}, [2]float64{123.1, 124.2})
	fmt.Println(result)
}

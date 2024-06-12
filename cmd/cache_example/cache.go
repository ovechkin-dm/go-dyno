package main

import (
	"fmt"
	"github.com/ovechkin-dm/go-dyno/pkg/dyno"
	"reflect"
	"time"
)

type Service interface {
	Foo(s string) string
	Bar(i int) int
}

type Impl struct {
}

func (h *Impl) Foo(s string) string {
	time.Sleep(2 * time.Second)
	return s + " world!"
}

func (h *Impl) Bar(i int) int {
	time.Sleep(2 * time.Second)
	return i + 1
}

type CachingProxy struct {
	delegate interface{}
	cache    map[string][]reflect.Value
}

func (c *CachingProxy) Handle(method reflect.Method, values []reflect.Value) []reflect.Value {
	_, ok := c.cache[method.Name]
	ref := reflect.ValueOf(c.delegate)
	if !ok {
		out := ref.MethodByName(method.Name).Call(values)
		c.cache[method.Name] = out
	}
	return c.cache[method.Name]

}

func CreateCachingProxyFor[T any](t T) (T, error) {
	proxy := &CachingProxy{
		delegate: t,
		cache:    make(map[string][]reflect.Value),
	}
	return dyno.Dynamic[T](proxy.Handle)
}

func main() {
	s := &Impl{}
	proxy, err := CreateCachingProxyFor[Service](s)
	if err != nil {
		panic(err)
	}

	fmt.Println(proxy.Foo("hello"))
	fmt.Println(proxy.Foo("hello"))
	fmt.Println(proxy.Foo("hello"))
}

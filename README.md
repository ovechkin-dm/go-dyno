## go-dyno

### Dynamic proxy for golang >= 1.18

![go-dyno](https://user-images.githubusercontent.com/6629797/219674966-bab33ecb-24b1-4a23-9d9f-8928e46f8bb7.png)

An attempt to bring java-like dynamic proxy to golang.

You can use dynamic proxies for AOP, logging, caching, metrics and mocking.

Basic example of caching proxy:

```go
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
	cache    map[int][]reflect.Value
}

func (c *CachingProxy) Handle(method *dyno.Method, values []reflect.Value) []reflect.Value {
	_, ok := c.cache[method.Num]
	ref := reflect.ValueOf(c.delegate)
	if !ok {
		out := ref.Method(method.Num).Call(values)
		c.cache[method.Num] = out
	}
	return c.cache[method.Num]

}

func CreateCachingProxyFor[T any](t T) (T, error) {
	proxy := &CachingProxy{
		delegate: t,
		cache:    make(map[int][]reflect.Value),
	}
	return dyno.Dynamic[T](proxy)
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

```

For golang <= 1.16 you can look at dpig project
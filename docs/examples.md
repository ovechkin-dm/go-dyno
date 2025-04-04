## Simple stopwatch

An example of a proxy that measures and prints time taken for every method invocation:

```go
package main

import (
	"fmt"
	"reflect"
	"time"

	"github.com/ovechkin-dm/go-dyno/pkg/dyno"
)

type Greeter interface {
	Greet() string
	SayHello(name string) string
}

type SimpleGreeter struct {

}

func (g *SimpleGreeter) Greet() string {
	return "Hello!"
}

func (g *SimpleGreeter) SayHello(name string) string {
	return fmt.Sprintf("Hello, %s!", name)
}

type StopWatch[T any] struct {
	Impl T
}

func (p *StopWatch[T]) Handle(m reflect.Method, values []reflect.Value) []reflect.Value {
	before := time.Now()
	result := reflect.ValueOf(p.Impl).MethodByName(m.Name).Call(values)	
	after := time.Now()
	fmt.Printf("Method %s took %v\n", m.Name, after.Sub(before))
	return result
}



func main() {	
	greeter := &SimpleGreeter{}
	stopWatch := &StopWatch[Greeter]{Impl: greeter}
	dynamicGreeter, err := dyno.Dynamic[Greeter](stopWatch.Handle)
	if err != nil {
		fmt.Println("Error creating dynamic greeter:", err)
		return
	}

	fmt.Println(dynamicGreeter.Greet())
	fmt.Println(dynamicGreeter.SayHello("World"))
}
```
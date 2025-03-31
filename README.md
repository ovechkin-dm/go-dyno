# Go-dyno 

[![Build Status](https://github.com/ovechkin-dm/go-dyno/actions/workflows/build.yml/badge.svg)](https://github.com/ovechkin-dm/go-dyno/actions)
[![Codecov](https://codecov.io/gh/ovechkin-dm/go-dyno/branch/main/graph/badge.svg)](https://app.codecov.io/gh/ovechkin-dm/go-dyno)
[![Go Report Card](https://goreportcard.com/badge/github.com/ovechkin-dm/go-dyno)](https://goreportcard.com/report/github.com/ovechkin-dm/go-dyno)
[![Documentation](https://pkg.go.dev/badge/github.com/ovechkin-dm/go-dyno.svg)](https://pkg.go.dev/github.com/ovechkin-dm/go-dyno)
[![Release](https://img.shields.io/github/release/ovechkin-dm/go-dyno.svg)](https://github.com/ovechkin-dm/go-dyno/releases)
[![License](https://img.shields.io/github/license/ovechkin-dm/go-dyno.svg)](https://github.com/ovechkin-dm/go-dyno/blob/main/LICENSE)

# Dynamic proxy for golang
Go-dyno is a lightweight and flexible library for Go, inspired by Java's dynamic proxy mechanism. It enables dynamic creation of proxy implementations for interfaces at runtime, allowing developers to intercept and customize method calls programmatically. This makes it a powerful tool for building dynamic behaviors and enhancing flexibility in Go applications.

# Documentation

Latest documentation is available [here](https://ovechkin-dm.github.io/go-dyno/latest/)

# Quick start

Install latest version of the library using go get command:

```bash
go get -u github.com/ovechkin-dm/go-dyno
```

# Example

This is an example of proxy that prints method name before any method invocation of the original instance. 

```go
package main

import (
	"fmt"
	"reflect"

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

type ProxyHandler[T any] struct {
	Impl T
}

func (p *ProxyHandler[T]) Handle(m reflect.Method, values []reflect.Value) []reflect.Value {
	fmt.Println("Method called:", m.Name)
	return reflect.ValueOf(p.Impl).MethodByName(m.Name).Call(values)	
}



func main() {	
	greeter := &SimpleGreeter{}
	proxyHandler := &ProxyHandler[Greeter]{Impl: greeter}
	dynamicGreeter, err := dyno.Dynamic[Greeter](proxyHandler.Handle)
	if err != nil {
		fmt.Println("Error creating dynamic greeter:", err)
		return
	}

	fmt.Println(dynamicGreeter.Greet())
	fmt.Println(dynamicGreeter.SayHello("World"))
}
```
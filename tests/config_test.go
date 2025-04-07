package tests

import (
	"reflect"
	"testing"

	"github.com/ovechkin-dm/go-dyno/pkg/dyno"
	"github.com/ovechkin-dm/go-dyno/pkg/dynoopts"
)

type GreetService interface {
	Greet(name string) string
}

func TestPayload(t *testing.T) {
	proxy, err := dyno.Dynamic[GreetService](func(m reflect.Method, values []reflect.Value) []reflect.Value {
		return []reflect.Value{reflect.ValueOf("Hello " + values[0].String())}
	}, dynoopts.WithPayload("GreetService"))
	if err != nil {
		t.Fatal(err)
	}

	payload, err := dyno.UnwrapPayload(proxy)
	if err != nil {
		t.Fatal(err)
	}

	if payload == nil {
		t.Fatal("Expected non-nil payload")
	}

	if payload != "GreetService" {
		t.Fatalf("Expected 'GreetService', got '%v'", payload)
	}
}

//go:build go1.18

package dyno

import (
	"errors"
	"reflect"

	"github.com/ovechkin-dm/go-dyno/pkg/dynoconfig"
	"github.com/ovechkin-dm/go-dyno/proxy"
)

func Dynamic[T any](handler func(m reflect.Method, values []reflect.Value) []reflect.Value, opts ...dynoconfig.Option) (T, error) {
	ifaceInstance := new(T)
	t := reflect.ValueOf(ifaceInstance).Elem().Type()
	result, err := DynamicByType(handler, t, opts...)
	if err != nil {
		return *ifaceInstance, err
	}
	iface, ok := result.(T)
	if !ok {
		return *ifaceInstance, errors.New("result is not of type T")
	}
	return iface, nil
}

func DynamicByType(
	handler func(m reflect.Method, values []reflect.Value) []reflect.Value,
	t reflect.Type,
	opts ...dynoconfig.Option,
) (any, error) {
	cfg := dynoconfig.Config{}
	for _, opt := range opts {
		opt(&cfg)
	}
	result, err := proxy.Create(func(m reflect.Method, values []reflect.Value) []reflect.Value {
		return handler(m, values)
	}, &cfg, t)
	if err != nil {
		return nil, err
	}
	return result, nil
}

func UnwrapPayload(v any) (any, error) {
	cfg, err := proxy.GetConfig(v)
	if err != nil {
		return nil, err
	}
	return cfg.Payload, nil
}

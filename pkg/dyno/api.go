//go:build go1.18

package dyno

import (
	"reflect"

	"github.com/ovechkin-dm/go-dyno/pkg/dynoconfig"
	"github.com/ovechkin-dm/go-dyno/proxy"
)

func Dynamic[T any](handler func(m reflect.Method, values []reflect.Value) []reflect.Value, opts ...dynoconfig.Option) (T, error) {
	cfg := dynoconfig.Config{}
	for _, opt := range opts {
		opt(&cfg)
	}		
	return proxy.Create[T](func(m reflect.Method, values []reflect.Value) []reflect.Value {
		return handler(m, values)
	}, &cfg)
}

func UnwrapPayload(v any) (any, error){
	  cfg, err := proxy.GetConfig(v)
	  if err != nil {
		  return nil, err
	  }	
	  return cfg.Payload, nil
}
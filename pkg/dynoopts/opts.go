package dynoopts

import "github.com/ovechkin-dm/go-dyno/pkg/dynoconfig"

func WithPayload(payload any) dynoconfig.Option {
	return func(c *dynoconfig.Config) {
		c.Payload = payload
	}
}

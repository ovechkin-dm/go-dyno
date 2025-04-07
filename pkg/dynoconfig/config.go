package dynoconfig

type Option func(cfg *Config)

type Config struct {
	Payload any
}

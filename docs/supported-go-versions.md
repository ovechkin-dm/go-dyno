## Go *-1.17

The library does not support Go versions before and up to 1.17 because it relies on generics support. Additionally, Go 1.17 still uses the stack instead of registers for function argument allocation. If you are still interested in having a dynamic proxy for Go 1.17, take a look at [dpig](https://github.com/cocotyty/dpig).

## Go 1.18-1.24

Fully supported for ARM64/AMD64 architectures. For other limitations, please refer to the "Limitations" section.

## Future Go Versions

Although future Go versions should support the library without any changes, there is still a chance that something in the Go runtime may change. Please refer to the "Library Internals and Guarantees" section for more information.
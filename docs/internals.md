# Library internals and guarantees

This section is describing undocumented/unexposed golang runtime features, that the library relies on. It is important to keep these features documented, as the golang runtime is a subject to change. Users of the library need more transparency, because of the (unlikely) possibility that this library won't be able to run on later golang versions. 

## go:linkname

**Relies on:**

 //go:linkname directive in golang linker. 

**Will be changed:** 

Highly unlikely

**Workaround:**

Unknown (needs investigation)

**Description:**

With the introduction of go 1.23, directive //go:linkname was mostly removed. https://tip.golang.org/doc/go1.23#linker
After release of go1.23, users of the language were only allowed to link to a limited set of function in golang runtime. Go-dyno uses only one such function, that is allowed to be linked:

```go
//go:linkname addReflectOff reflect.addReflectOff
func addReflectOff(ptr unsafe.Pointer) int32
```

There is no evidence that linking for this function will be removed.

In the unlikely case this feature will be removed, we have to find a way to set function address for dynamically created struct.


## Internal go runtime structures

**Relies on:**

`rtype`, `structTypeUncommon` structure layout

**Will be changed:** 

Likely

**Workaround:**

Easy

**Description:**

Consider current struct:

```
type refValue struct {
	typ  *rtype
	ptr  unsafe.Pointer
	flag uintptr
}
```

It contains the same field that are inside go runtime `refValue` struct. However if golang runtime will change struct and, for example, add one more field in the beginning of fields declaration, this will break binary compatibility and we have to reflect the change in our struct also. The change itself is not hard and can easily be fixed.

## Golang ABI

**Relies on:**

Current golang ABI (Application Binary Interface)

**Will be changed:** 

Likely

**Workaround:**

Easy

**Description:**

Current implementation heavily relies on golang ABI specification which includes:

- Register layout
- Receiver register
- Function call layout with receiver VS without receiver
- Others

we can adapt the library to accommodate the changes. The golang team provides detailed release notes and documentation for any ABI modifications, which will allow us to update the implementation accordingly. Since the changes are typically incremental and well-documented, we are confident that any necessary adjustments can be made with minimal disruption to the library's functionality.


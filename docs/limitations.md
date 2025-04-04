Because library uses assembly code to create proxy, it relies on CPU architecture ABI. 
This means that you cannot use it in a project that is intended to be cross-compiled to platforms other than ones that are listed below.

For now supported platforms are:

- AMD64
- ARM64 (M1-M3 macs are supported)

This list may be extended in the future.
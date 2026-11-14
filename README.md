# chvm

A fast, standalone virtual machine that runs choco bytecode (`chbc`). It is a runtime for any language that targets `chbc`. Written in C.

## chbc

A simple, 8085-like, register-based bytecode. 16 64-bit registers, fixed 8-byte instructions, 3-operand arithmetic (including division and modulo), bitwise and logical operations, comparisons that write 0 or 1, IEEE double arithmetic in the same registers, sized loads and stores, and a memory stack. `sp` is a register, so locals, arrays and structs live in the stack frame and have addresses.

See `src/opcodes.h` for the opcode list, `PLAN.md` for the design and file format, and `docs/ABI.md` for the memory layout, calling convention and system calls.

## Build and run

```
make            # build/chvm, build/chasm and build/chdis
make static     # fully static chvm (no native library calls)
make FFI=0      # build without libffi
make test

build/chasm examples/fib.asm fib.chbc
build/chvm fib.chbc [args...]
build/chvm -m 1000000 fib.chbc   # set memory size in bytes
build/chvm -v fib.chbc    # verify only
build/chvm -F prog.chbc   # allow calls into native .so libraries (needs libffi)
build/chdis fib.chbc      # disassemble
```

## chts, a TypeScript subset

`ts/` holds a compiler for a small TypeScript subset, written in that subset. It builds itself on chvm. See `ts/README.md`.

## Stages

1. Bytecode interpreter (done).
2. Fast dispatch, then optimiser (see `PLAN.md`).

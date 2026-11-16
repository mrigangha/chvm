# chvm

A fast, standalone virtual machine that runs choco bytecode (`chbc`). It is a runtime for any language that targets `chbc`. Written in C.

## chbc

A simple, 8085-like, register-based bytecode. 32 64-bit registers (`r0` to `r31`; programs that use only `r0` to `r15` run unchanged), fixed 8-byte instructions, 3-operand arithmetic (including division and modulo), bitwise and logical operations, comparisons that write 0 or 1, IEEE double arithmetic in the same registers, sized loads and stores, and a memory stack. `sp` is a register, so locals, arrays and structs live in the stack frame and have addresses.

See `src/opcodes.h` for the opcode list, `PLAN.md` for the design and file format, and `docs/ABI.md` for the memory layout, calling convention and system calls.

## Build and run

```
make            # build/chvm, build/chasm, build/chdis and build/chbake
make static     # fully static chvm (no native library calls)
make FFI=0      # build without libffi
make test       # VM cases, then the chbake cases

build/chasm examples/fib.asm fib.chbc
build/chvm fib.chbc [args...]
build/chvm -m 1000000 fib.chbc   # set memory size in bytes
build/chvm -v fib.chbc    # verify only
build/chvm -F prog.chbc   # allow calls into native .so libraries (needs libffi)
build/chvm -X prog.chbc   # allow the program to run other programs (SYS_SPAWN)
build/chvm -N prog.chbc   # allow the program to read the environment and wait for network connections
build/chdis fib.chbc      # disassemble
build/chbake fib.chbc fib.c   # bake into one C file (see below). --net allows network calls
```

## chbake, one executable per program

`chbake` turns a `.chbc` file into a C source file that holds the program and an interpreter trimmed to the instructions the program uses (typically 44 to 48 of 219). A stripped executable is 17 to 23 percent smaller, and runs within 1 to 4 percent of the full interpreter. Compile it with `-fno-crossjumping`. See "Baking a program into one executable" in `docs/ABI.md`.

## chts, a TypeScript subset

`ts/` holds a compiler for a small TypeScript subset, written in that subset. It builds itself on chvm, has a small standard library (`ts/std`: files, arguments, exit, running other programs), and does register allocation, inlining and loop optimisations. Programs can start lightweight processes that share nothing and talk by messages, with supervisors that restart the ones that crash (`docs/ACTORS.md`). Programs can `throw` and `try`/`catch`/`finally`, and runtime faults such as a bad array index can be caught. See `ts/README.md`.

## Stages

1. Bytecode interpreter (done).
2. Fast dispatch, then optimiser (see `PLAN.md`).
3. Web server and Praline, a Flask-like framework in chts, for a portfolio site on Render (stages 7a to 7g in `PLAN.md`, stages 8a to 8h in `docs/PRALINE.md`).

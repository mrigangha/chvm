# chbc ABI

The rules a compiler must follow so that separately written code works together.
The VM enforces memory bounds and control flow. It does not enforce anything in this
document about registers or frames.

## Memory

```
0            4096          heap_base                        sp
|  null page |  data | bss |  heap -->        <-- free -->  <-- stack  |  mem_size
```

- Any access below 4096 faults, so address 0 is a usable `NULL`.
- Data starts at `DATA_BASE` (4096). Bss follows it, 16-byte aligned. `heap_base` is the end of bss, rounded up to 16.
- Memory is zeroed at start. Default size is 64 MiB (`chvm -m bytes` changes it).
- The stack starts at the top and grows down. `PUSH` and `CALL` fault if `sp` would go below the heap break.
- `SBRK rd, rs` moves the break by the signed value in `rs` and puts the old break in `rd`.
  - Growing zeroes the new bytes.
  - It fails with `-1` if the break would come within 64 KiB of `sp`, or below `heap_base`. A failed call changes nothing.
  - `SBRK rd, r_zero` reads the break.
- Byte order is little-endian.

## Registers

| Register | Role | Saved by |
|---|---|---|
| `r0` | return value, scratch | caller |
| `r1`-`r5` | arguments 1 to 5, scratch | caller |
| `r6`-`r8` | scratch | caller |
| `r9`-`r13` | locals that survive calls | callee |
| `r14` (`fp`) | frame pointer | callee |
| `r15` (`sp`) | stack pointer | callee (must be unchanged after return) |

"Caller saves" means a call may change the register, so the caller must save it first if it needs it.
"Callee saves" means a function that uses the register must restore it before `RET`.

## Calls

- `CALL label` pushes the return address (a code byte offset) and jumps. `CALLR rs` does the same to the address in `rs`. `RET` pops and jumps.
- A function pointer is the code byte offset of the function. The assembler gives it with `LI r1, func` or `.word func`.
- **Offset 0 of the code must be a `TRAP` instruction.** A call through a null function pointer then faults instead of running the first function.
- Tail calls are allowed: restore the frame, then `JMP`.

## Arguments and results

- Every argument takes one 8-byte slot. Integers, pointers and doubles all use the same registers.
- Arguments 1 to 5 go in `r1`-`r5`. Argument 6 and up go on the stack.
  - The caller reserves the space with `ADDI sp, sp, -8*N`, where `N` is the number of stack arguments.
  - Argument 6 is at `[sp+0]`, argument 7 at `[sp+8]`, and so on, at the moment of the `CALL`.
  - After `CALL` pushes the return address, the callee finds argument 6 at `[sp+8]`, or at `[fp+16]` after the standard prologue.
  - The caller removes them after the call returns: `ADDI sp, sp, 8*N`.
- Result in `r0`. A `void` function leaves `r0` unspecified.
- Integers narrower than 64 bits are extended to 64 bits by the sender, using the type's signedness (`SEXT8/16/32`, or `ZEXT32`, and `ANDI` for 8 and 16 bit unsigned). The receiver may rely on this. Results follow the same rule.
- `float` is carried in the low 32 bits of the register with the upper 32 bits zero, as in the single-precision ops (`FADDS` and so on). A compiler may instead keep a `float` as a double rounded with `FROUND32`, but it must pick one form and use it for every `float` argument and result.
- `bool` is 0 or 1.

## Structs and large values

- A struct of 8 bytes or less is passed in one slot: its bytes, little-endian, zero-padded. This also holds for a struct that contains only a double.
- A larger struct is copied by the caller into its own temporary memory, and the slot holds a pointer to that copy. The callee may change the copy.
- A return value of 8 bytes or less comes back in `r0` the same way.
- A larger return value uses a hidden first argument: the caller passes a pointer to space for the result in `r1`, and every named argument moves up one register. The callee writes the result there and returns the same pointer in `r0`.

## Standard frame

A function that calls others, or that needs a frame, begins like this:

```
func:
    PUSH fp
    MOV  fp, sp
    ADDI sp, sp, -LOCALS     ; LOCALS is a multiple of 8
    ; save any of r9-r13 that the function uses, e.g. ST64 [fp-8], r9
    ...
    ; restore r9-r13
    MOV  sp, fp
    POP  fp
    RET
```

```
fp+16+8*k   stack argument 6+k
fp+8        return address
fp+0        saved fp
fp-8 ...    saved registers, then locals (addressable: &x is fp-n)
sp          lowest address in use
```

- Memory below `sp` may be overwritten at any time. There is no red zone.
- Alignment: 8 bytes is enough. No instruction needs more.
- A leaf function that needs no locals may skip the frame.

## Variable arguments

Variadic functions use the same slots as any other function.

1. The callee spills `r1`-`r5` into a save area at the bottom of its frame, at consecutive addresses `s`, `s+8`, ... `s+32`.
2. A `va_list` is one pointer into the arguments. It starts at the first unnamed argument.
3. `va_arg` reads 8 bytes at the pointer and adds 8. When the pointer reaches the end of the save area (`s+40`), it jumps to the stack arguments at `fp+16`.
4. Named arguments consume the first slots. So a function with `n` named arguments starts the `va_list` at `s+8*n`.

A caller does not need to know whether a callee is variadic. There is no hidden count register. Because doubles share the integer registers, there is no separate floating-point count.

## Program start and exit

- The entry point must not `RET`. At start the stack is empty, so `RET` faults with "stack underflow".
- A compiler emits a start stub: call `main` with `argc` from `SYSCALL SYS_ARGC` (and argument strings through `SYS_ARGV`), then `EXIT r0`.
- `EXIT rs` ends the program with the low 8 bits of `rs` as the process exit code. `HALT` exits with 0.
- VM-level failures use exit codes 64 (usage), 65 (load or verify error) and 70 (runtime fault). A program should avoid returning these.

## System calls

`SYSCALL n`: arguments in `r1`-`r5`, result in `r0`, no other register changes. A negative result is `-errno` using Linux numbers. An unknown `n` returns `-38` (`ENOSYS`). All of these have predefined assembler names (`SYS_WRITE`, `O_CREAT`, `SEEK_END`, ...), see `src/syscalls.h`.

| Call | Arguments | Result |
|---|---|---|
| `SYS_WRITE` 1 | fd, buf, len | bytes written |
| `SYS_READ` 2 | fd, buf, len | bytes read, 0 at end of file |
| `SYS_OPEN` 3 | path, flags, mode | fd (3 or more) |
| `SYS_CLOSE` 4 | fd | 0. fds 0, 1, 2 cannot be closed |
| `SYS_SEEK` 5 | fd, offset, whence | new offset |
| `SYS_ARGC` 6 | | number of arguments, including the program path |
| `SYS_ARGV` 7 | i, buf, cap | length of argument `i`. Copies it with a NUL. `-34` if `cap` is too small |
| `SYS_TIME` 8 | clock | nanoseconds. Clock 0 is wall time, 1 is monotonic |
| `SYS_UNLINK` 9 | path | 0 |
| `SYS_DLOPEN` 10 | path | library handle (1 or more). Path 0 opens the host process itself |
| `SYS_DLSYM` 11 | handle, name | function id (1 or more) |
| `SYS_DLCLOSE` 12 | handle | 0 |

Buffers must lie inside memory and above the null page, or the call returns `-14` (`EFAULT`).
Output through `SYS_WRITE` to fd 1 and through `PRINT` shares one buffer, so the order is kept.

## Bulk memory, jump tables, 32-bit arithmetic

- `MEMCPY dst, src, n` copies `n` bytes and handles overlap (memmove). `MEMSET dst, val, n` fills with the low byte of `val`. `MEMCMP rd, p, q, n` sets `rd` to -1, 0 or 1, comparing as unsigned bytes. Operands are registers. A length of 0 never faults, even for a null address. Any other range must lie inside memory above the null page, or the VM faults before changing anything.
- `JTAB r, count, table`: if `r` (unsigned) is below `count`, jump to `table + 8*r`, else fall through. The table is `count` consecutive `JMP` instructions. `count` is 0 to 65535. A negative index is a huge unsigned number, so it falls through to the default. The verifier checks that the whole table lies inside the code.
- `BEQI BNEI BLTI BGEI BLTUI BGEUI r, n, label` compare with a 16-bit signed constant. The assembler also accepts `BGTI BLEI BGTUI BLEUI`, as the same op with the constant plus 1.
- `LTUI LEUI GTUI GEUI` compare unsigned with a 32-bit immediate that is sign-extended to 64 bits first.
- `ADDI32 ADD32 SUB32 MUL32 DIV32 MOD32 SHL32 SHR32` work on the low 32 bits and sign-extend the result to 64. `DIVU32 MODU32 USHR32` zero-extend. Shift counts are masked to 31. `INT_MIN / -1` gives `INT_MIN` and `INT_MIN % -1` gives 0. Division by zero faults. A C `int` is held sign-extended, so these match C `int` arithmetic with no extra instruction.

## Debug section

Optional. `chasm` writes it by default and `chasm -s` leaves it out. All numbers are little-endian u32.

```
nfiles, nfuncs, nlines, strsize
files[nfiles]            offsets into the string table
funcs[nfuncs]            {start, size, name}   sorted by start, no overlap
lines[nlines]            {offset, file, line}  strictly increasing offset
strtab[strsize]          NUL-terminated strings
```

A line entry applies from its offset until the next entry. The loader checks every offset, size and string, and rejects a bad section with "bad debug information". A fault message names the function and `file:line` when the section is present:

```
chvm: runtime error: division by zero (offset 40, in helper, prog.c:4)
```

Assembler directives, for a compiler to emit:

- `.file "prog.c"` sets the source file for the entries that follow. The default is the `.asm` file.
- `.line N` says the instructions that follow came from source line N, until the next `.line`. `.line 0` goes back to the `.asm` line.
- `.func name` and `.endfunc` mark a function's range. `name` must be the code label at its start.

## Tools

- `chasm [-s] in.asm out.chbc` assembles. `-s` strips the debug section. There is no limit on label count, name length, line length or operand count.
- `chvm [-m bytes] [-v] file.chbc [args]` runs. `-v` only verifies.
- `chdis [-s] [-n] file.chbc` disassembles. It shows offsets, raw bytes, labels, function names and source lines, and dumps the data section. `-s` skips the data dump. `-n` prints plain assembly that `chasm` accepts and that assembles back to identical code (the test suite checks this for every test program).

## Bit operations, select, and single-precision float

- `MULHU rd, a, b` is the high 64 bits of the unsigned 128-bit product. `MULH` is the signed version. The low half is `MUL`. Compilers use these for division by a constant and for 128-bit arithmetic.
- `SEL rd, c, x, y` sets `rd` to `x` if `c` is not zero, else `y`. It never branches. `rd` may be any of the four registers.
- `CLZ`, `CTZ` count leading and trailing zero bits. The result is 64 for a zero input (32 for `CLZ32`, `CTZ32`, which look at the low 32 bits). `POPCNT` counts set bits.
- `ROL`, `ROR` rotate 64 bits and `ROL32`, `ROR32` rotate the low 32 bits (the result is zero-extended). The count is taken modulo 64 or 32.
- `BSWAP16`, `BSWAP32`, `BSWAP64` reverse the bytes of the low 2, 4 or 8 bytes. The result is zero-extended.
- Single-precision float ops work on the low 32 bits of a register and write a result with the upper 32 bits zero: `FADDS FSUBS FMULS FDIVS FNEGS FABSS FSQRTS`, compares `FEQS FNES FLTS FLES`, conversions `I2FS U2FS FS2I FS2U`, and `FS2D`, `D2FS` to move between float and double. Float results are rounded to single precision by the operation itself, so no `FROUND32` is needed. `FS2I` and `FS2U` saturate and turn NaN into 0, like the double versions.
- `PRINTFS` prints the shortest text that reads back as the same float, and `nan` for NaN. `LIFS rd, 3.14` loads a float constant. `LDF32` and `STF32` still exist for the double-based form. For a float kept in a register, use `LD32` and `ST32`.

## Calling native (C) libraries

A program can call functions in shared libraries (`.so`). This needs a build with libffi and the `-F` flag: `chvm -F prog.chbc`. Without `-F`, `SYS_DLOPEN`, `SYS_DLSYM` and `SYS_DLCLOSE` return `-EPERM` and `CALLX` faults. In a build without libffi they return `-ENOSYS`, and `-F` is refused. The static build (`make static`) has no foreign calls.

**This is not a sandbox.** Enabling it lets the program call any function in any library it can open, including functions that write files or run other programs. Use `-F` only for bytecode you trust.

### Steps

1. `SYS_DLOPEN` with a path gives a library handle. Path `0` opens the host process, so libc and libm functions (`abs`, `strlen`, `sqrt`) are available.
2. `SYS_DLSYM handle, "name"` gives a function id. The same symbol gives the same id. Ids are small numbers, not addresses.
3. Put the arguments in consecutive 8-byte slots in memory, put that address in `r1`, and run `CALLX rd, fn, sig`. `fn` and `sig` are registers: the function id, and the address of a signature string. The result goes to `rd`.
4. `SYS_DLCLOSE` unloads a library and invalidates all of its function ids.

`CALLX` never reports an error through its result. A bad call stops the program, so a result is always a real value.

### Signature

```
types [ . types ] > type
```

| Letter | C type | Argument | Result |
|---|---|---|---|
| `i` | `int` | low 32 bits | sign-extended |
| `u` | `unsigned int` | low 32 bits | zero-extended |
| `l` | `long`, `size_t`, `int64_t`, an opaque handle | 64 bits | 64 bits |
| `d` | `double` | 64 bits | 64 bits |
| `f` | `float` | low 32 bits (same as the single-precision ops) | low 32 bits, upper 32 zero |
| `p` | pointer | a guest address, or 0 for `NULL` | a guest address, or 0 |
| `s` | `const char *` | a guest address of a string | not allowed |
| `v` | `void` | not allowed | result is 0 |

- Up to 16 arguments. A `.` ends the fixed arguments of a variadic function, so `printf` is `s.id>i`. `f` is not allowed after the `.`, because C promotes it to `double`.
- Arguments of type `p` and `s` are translated from guest addresses to real addresses. The call faults instead of running if an address is below the null page or past the end of memory, or if a string has no NUL before the end of memory. Pointer `0` is `NULL` for `p`, but not allowed for `s`.
- A function that returns a `p` is translated back. A pointer inside guest memory becomes a guest address, `NULL` becomes 0, and any other pointer faults with "returned a pointer outside guest memory". To receive a native pointer anyway, use `l`. It is an opaque number that the program can hand back to the library later.
- The library can read and write **all** of guest memory through a pointer it was given, up to wherever it chooses. The VM checks the start address only, not how far the function reads or writes.
- Callbacks (passing a bytecode function to C, for `qsort` and similar) are not supported.
- A signature that is bad, a function id that is not valid, a bad pointer, and a missing `-F` all end the program with a message such as `foreign call: bad signature`.

## Baking a program into one executable

`chbake prog.chbc prog.c` writes a C file that holds the program as a byte array and runs it on the
interpreter. Compile it with the runtime sources to get one standalone executable:

```
build/chbake prog.chbc prog.c
cc -O2 -fno-crossjumping -Isrc prog.c src/chbc.c src/sys.c src/foreign.c -lm -o prog
```

- **Only the instructions the program uses are kept.** `chbake` reads the verified code, notes which
  opcodes appear, and the generated file defines `CHVM_HAS_<name>` for each one. The interpreter points
  every unused opcode at a common stub, so nothing refers to its handler and the compiler removes it.
  `chbake --all` keeps every instruction. A typical program uses 44 to 48 of 193, and the interpreter
  loop shrinks from about 15 KB to about 4 KB.
- **Keep `-fno-crossjumping`.** With few handlers, gcc merges the identical "go to the next instruction"
  jump at the end of each one into a few shared jumps. That defeats computed goto, and the trimmed program
  ran 2 to 9 percent slower than the full interpreter. With the flag it runs at the same speed.
- `vm.c` is included by the generated file, so do not also list it on the compile line.
- A baked program takes its memory size from the `CHVM_MEM` environment variable (bytes), like `chvm -m`.
- A baked program cannot call native libraries, since it never enables them.

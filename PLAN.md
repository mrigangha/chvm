# chvm plan

Language: C (gnu11). Output: standalone `chvm` executable. Little-endian hosts only.

## Design

- Register VM. 16 64-bit registers `r0`-`r15`, untagged. No flags: compares write 0 or 1 into a register.
- `r14` is `fp` and `r15` is `sp` by convention. `sp` starts at the top of memory and grows down. `PUSH`, `POP`, `CALL` and `RET` use `sp`.
- Calling convention (suggested, not enforced): arguments in `r1`-`r5`, result in `r0`, the caller saves what it needs.
- Floats are IEEE doubles in the same registers. There is no separate float register file. The opcode picks how a register is read.
- Locals that need an address live in a frame in linear memory: `ADDI sp, sp, -N`, then `[sp+off]`. `&x` is `sp+off`.
- Instruction: fixed 8 bytes, `op a b c imm32`. Branch targets are byte offsets that are multiples of 8.
- 64-bit constants: `MOVI` loads a sign-extended 32 bits, `MOVHI` sets the high 32 bits. The assembler's `LI` picks one or both.
- Float ops: `FADD FSUB FMUL FDIV FNEG FABS FSQRT`, compares `FEQ FNE FLT FLE` write 0 or 1 (all false for NaN except `FNE`). `I2F U2F F2I F2U` convert. `F2I` and `F2U` saturate and map NaN to 0, so they never trap. `FROUND32` rounds a double to float precision. `LDF32` and `STF32` convert a 32-bit float to and from a double in memory. `PRINTF` prints the shortest text that reads back exactly, and always prints `nan` for NaN.
- Memory ops use `[rb + imm32]`. Loads: `LD8/16/32/64` zero-extend, `LD8S/16S/32S` sign-extend. Stores: `ST8/16/32/64`.
- Memory layout: null page (addresses below 4096 fault), data at 4096, bss, heap (`SBRK`), free space, stack at the top growing down. Default memory is 64 MiB. The full rules, calling convention and system calls are in `docs/ABI.md`.
- Bytecode is verified once at load time: opcode, register numbers, branch and entry targets, last instruction is `HALT`, `EXIT`, `TRAP`, `JMP` or `RET`.
- Runtime checks: memory bounds (including the null page), stack overflow and underflow, division by zero, `RET` and `CALLR` targets, `TRAP`.

## File format `.chbc` (version 4)

```
offset  size  field
0       4     magic "CHBC"
4       2     version (4)
6       2     reserved (0)
8       4     entry (code byte offset, multiple of 8)
12      4     code_size (multiple of 8)
16      4     data_size
20      4     bss_size (zero-filled bytes after the data, not stored in the file)
24      4     debug_size (bytes of debug section after the data, 0 if none)
28      4     reserved (0)
32      ...   code, then data, then debug section
```

## Stages

| # | Stage | Output | Status |
|---|-------|--------|--------|
| 0 | Skeleton | Makefile, layout, this plan | done |
| 1 | Format, loader, verifier | `src/chbc.[ch]`, `src/opcodes.h` | done |
| 2 | Interpreter (switch dispatch) | `src/vm.[ch]`, `src/main.c` | done |
| 3 | Assembler and tests | `tools/chasm.c`, `tests/` | done |
| 4 | Fast dispatch and benchmarks | computed goto, `bench/` | done |
| 4b | Register VM redesign | registers, memory stack, addressable locals, sized loads and stores, unsigned ops, `EXIT`, `CALLR` | done |
| 4c | Floating point | double ops, compares, int/float conversion, 32-bit float load/store, `LIF`, `.double`, `.float` | done |
| 4d | Assembler data features | `.word label`, `label+off`, `.equ`, `.align`, `.bss` | done |
| 4e | Heap, system calls, ABI | null page, `SBRK`, `SYSCALL` (write, read, open, close, seek, argc, argv, time, unlink), `TRAP`, `docs/ABI.md` | done |
| 4f | Compiler helpers | `MEMCPY`/`MEMSET`/`MEMCMP`, immediate branches, unsigned immediate compares, 32-bit arithmetic, `JTAB` | done |
| 4g | Debug info and tools | line table, function names, `chdis` disassembler, assembler hash table (no label limit), no line length limit | done |
| 4h | Extras | `MULH`/`MULHU`, `SEL`, `CLZ`/`CTZ`/`POPCNT`, rotates, byte swaps, single-precision float ops | done |
| 4i | Native calls | `CALLX`, `SYS_DLOPEN/DLSYM/DLCLOSE`, libffi, `-F` flag, optional at build time | done |
| 6 | Language `chts` | a TypeScript subset compiler written in itself (`ts/`), compiled by node first, then by itself | done |
| 6b | Faster generated code | register locals, fused float branches, array/string instructions, peephole, no-frame leaf and call paths | done |
| 6c | Baked executables | `chbake`: the program and the interpreter in one file, keeping only the instructions the program uses | done |
| 5 | Optimiser | peephole, constant folding, dead code, superinstructions, as a `.chbc` to `.chbc` pass | todo |
| 6 | Extras | float opcodes, disassembler, fuzzing the loader and verifier | todo |

## Results so far

- Computed goto is the default for GCC/Clang. Build with `-DCHVM_SWITCH` for the `switch` fallback.
- The stack VM was replaced by the register VM. Numbers for both are in `bench/RESULTS.md`.
- Register VM: loop 2.7x faster than the stack VM, fib 1.5x slower because calls go through linear memory.

## Stage 5 notes

- Decode to an instruction list, rewrite, re-encode, fix jump targets (all instructions are 8 bytes, so targets are just indexes).
- Peephole: `ADDI r,r,0`, `MOV r,r`, `JMP` to next instruction, constant folding on `MOVI`.
- Fuse compare and branch: `LT t,a,b; JZ t,L` becomes `BGE a,b,L` when `t` is dead.
- Cut call cost: fewer `PUSH`/`POP` pairs around calls (callee-saved registers, leaf-function detection).

## Later (not planned yet)

- Registers in CPU registers. The interpreter keeps `r0`-`r15` in a C array, so the compiler addresses them as `96(%rsp,%rax,8)`, and dependent instructions wait on store-to-load forwarding. This is why fib35 is slower than the stack VM.
- Options: x86-64 JIT (largest gain, x86-64 only), specialised handlers (needs fewer registers), or fewer instructions through the stage 5 optimiser.
- Decision: stay with the interpreter for now.

## Memory management (decision)

- **Now:** manual arenas. `arenaMark()` and `arenaFree(mark)` in chts, backed by the `HEAPMARK` and
  `HEAPFREE` instructions. Nothing is freed automatically. Memory stays flat in a loop that frees to a
  mark each round (1,092 KB over 300,000 rounds, against 131 MB without). Anything allocated after a
  mark must not be kept after `arenaFree`, and the VM cannot check that.
- **Later, runtime:** a conservative mark-and-sweep collector in the VM, like D's. Roots are the 16
  registers, the stack and the data segments. It needs a size-class allocator with free lists, a block
  table that also handles interior pointers, and a stress mode that collects on every allocation and
  compares output. Estimated 1 to 2 weeks. It handles replacement of long-lived objects, which regions cannot.
- **Later, compile time:** region inference that inserts marks and frees automatically when escape analysis
  proves nothing allocated inside survives. It must be conservative, because a wrong answer is a silent
  use-after-free. It will not free objects that replace each other inside long-lived state. Needs a debug
  mode that poisons freed memory, and tests that compare output with and without freeing.

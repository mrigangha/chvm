# chts: a small TypeScript for chvm

A compiler for a small, strict subset of TypeScript, written in that subset. It compiles to
`chbc` assembly for the register VM in the parent directory. See `LANG.md` for the language.

Every program is also valid TypeScript. `tsc --strict` accepts it, and `node prog.ts` prints
the same output as the compiled program. The tests use Node as the reference for that.

## Use

```
make                                    # in the repository root: builds chvm and chasm
node ts/src/chts.ts -r prog.ts          # compile with node, run on chvm
node ts/src/chts.ts -o prog.chbc prog.ts
node ts/src/chts.ts -S -o prog.asm prog.ts
```

`-r` runs the program, `-S` writes assembly, `-o` names the output. `CHVM_BIN` can point at the
directory holding `chasm` and `chvm` (the default is `build/` in the repository root).

## Self-hosting

```
sh ts/build_self.sh      # node builds the compiler, then the compiler builds itself twice
sh ts/tests/run_self.sh  # run the program tests with the self-hosted compiler
```

`build_self.sh` runs three stages and checks that the assembly from stages 1, 2 and 3 is
identical. That makes `ts/out/chts.chbc` a compiler that runs on chvm alone:

```
build/chvm ts/out/chts.chbc -S -o prog.asm prog.ts
build/chasm prog.asm prog.chbc
```

With `-X`, chvm lets the compiler start `chasm` itself, so one command gives a `.chbc`
(run from inside `ts/`, where `../build` holds `chasm`):

```
cd ts
../build/chvm -X out/chts.chbc -o prog.chbc prog.ts
```

Without `-X` (`SYS_SPAWN` stays off) it prints `cannot run ../build/chasm: run chvm with -X to allow it`. `-S` still
writes assembly only.

## Standard library

```ts
import { readFile, writeFile, argAt, exit, runProgram } from "./std/os.ts"
```

Each module in `std/` has a node file (`os.ts`) and a chvm file (`os_chvm.ts`). chts compiles the
chvm file, so the same source runs under both. `std/arena.ts` gives `arenaMark` and `arenaFree`
to node, for programs that free memory by hand on chvm.

## Generated code

The generator keeps locals in 21 saved registers (`r9`-`r13`, `r16`-`r31`) and shares registers
between variables in separate blocks. Other savings: results written straight into variable
registers, constants on the immediate side, inverted loops, a fused add-and-branch for counting
loops, early return before the prologue, hoisted loads, and inlining of small pure functions. A
peephole pass (`src/peephole.ts`) cleans the assembly. See `LANG.md` for the rules.

## Benchmarks

```
sh ts/bench/run.sh      # node vs chvm, best of 3
sh ts/bench/total.sh    # source to output, compile time included
sh ts/bench/vs_c.sh     # against C
sh ts/bench/vs_go.sh    # against Go
```

## Tests

```
sh ts/tests/all.sh      # lexer, parser, checker, 39 end-to-end programs and the Praline tests, checked against node
```

## Layout

| File | Role |
|---|---|
| `src/lexer.ts`, `parser.ts` | source to syntax tree |
| `src/checker.ts`, `types.ts` | names, types, and every rule in `LANG.md` |
| `src/codegen.ts` | tree to chasm assembly |
| `src/peephole.ts` | assembly cleanup |
| `src/prelude.ts`, `runtime.s` | the runtime: strings, arrays, allocation, printing. `node build_prelude.ts` embeds them in `prelude_src.ts` and `prelude_asm.ts` |
| `std/os.ts`, `std/os_chvm.ts` | standard library: files, arguments, exit, other programs, for node and for chvm. `std/net.ts` and `std/net_chvm.ts` add the environment and a TCP server socket (chvm `-N`). `std/arena.ts` is the node stand-in for `arenaMark`/`arenaFree` |
| `src/chts.ts` | the command line |
| `praline/` | Praline, a web framework in chts. See `docs/PRALINE.md` |

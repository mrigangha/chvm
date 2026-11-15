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
build/chvm ts/out/chts.chbc -S -H ts/src/host_chvm.ts -o prog.asm prog.ts
build/chasm prog.asm prog.chbc
```

With `-X`, chvm lets the compiler start `chasm` itself, so one command gives a `.chbc`
(run from inside `ts/`, where `../build` holds `chasm`):

```
cd ts
../build/chvm -X out/chts.chbc -H src/host_chvm.ts -o prog.chbc prog.ts
```

Without `-X` it prints `cannot run ../build/chasm: run chvm with -X to allow it`. `-S` still
writes assembly only.

## Tests

```
sh ts/tests/all.sh      # lexer, parser, checker, and 22 end-to-end programs checked against node
```

## Layout

| File | Role |
|---|---|
| `src/lexer.ts`, `parser.ts` | source to syntax tree |
| `src/checker.ts`, `types.ts` | names, types, and every rule in `LANG.md` |
| `src/codegen.ts` | tree to chasm assembly |
| `src/prelude.ts`, `runtime.s` | the runtime: strings, arrays, allocation, printing |
| `src/host.ts`, `host_chvm.ts` | file and process access, for node and for chvm |
| `src/chts.ts` | the command line |

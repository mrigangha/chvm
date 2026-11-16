# chts: the language

A strict subset of TypeScript. Every chts program is valid TypeScript (`tsc --strict`) and runs
unchanged under `node prog.ts`, with the same output. The subset is chosen so the compiler itself,
written in it, can be compiled by itself.

## Included

- Types: `number` (always a double), `string`, `boolean`, `void`, `T[]`, interface names, function types `(a: number) => string`, and `any`. `any` is an untyped 64-bit value that converts to and from every type. It exists to build self-referencing sentinel objects, so use it rarely.
- `interface Name { a: number; b: string }`. Instances are references, fields are mutable.
- Object literals `{ a: 1, b: "x" }` (all fields, written out in full) and array literals `[1, 2]`.
- `let` and `const` with one declarator. Top-level ones are globals.
- Functions: top-level `function` declarations only, parameter and return types always written, at most 5 parameters, recursion allowed.
- Function values: the name of a top-level function is a value, of type `(a: number) => string`. It can be stored in a variable, an array element, an interface field, passed as an argument, returned, compared with `===`, and called (`f(x)`, `table[i](x)`, `route.run(req)`). A function type has at most 5 parameters, written with names and no `?`. There are no closures: only top-level functions are values, a nested function or arrow function is still an error, and a function value never captures a variable. A call through a function value does not get inlined.
- Statements: block, `if`/`else`, `while`, `for(;;)`, `break`, `continue`, `return`, `throw`, `try`/`catch`/`finally`, expression statement.
- Operators: `+ - * / %`, `< <= > >= === !== == !=`, `&& || !`, `?:`, `= += -= *= /= %=`, `++ --`, unary `-`.
- Strings: `+` joins a string with a string, number or boolean. `s.length`, `s.charCodeAt(i)`, `s.slice(a, b)`, `s.indexOf(t)`, `String.fromCharCode(n)`.
- Arrays: `a.length`, `a[i]`, `a[i] = v`, `a.push(v)`, `a.pop()`, `a.join(sep)` (on `string[]`), `a.slice(a, b)`.
- `Math.floor ceil trunc abs sqrt min max`, `Number(s)`, `console.log(...)`, `console.error(...)`.
- Standard library: `import { readFile, writeFile, argAt, exit, runProgram } from "./std/os.ts"`. `import { getEnv, listen, accept, recv, sendAll, finishWriting, closeFd, localPort } from "./std/net.ts"` gives a program the environment and a TCP server socket; it needs `chvm -N`, and under node only `getEnv` works. Each module in `std/` has a node file (`os.ts`) and a chvm file (`os_chvm.ts`); chts compiles the second one, so the same source runs under both. `std/arena.ts` gives `arenaMark` and `arenaFree` to node. `std/fs.ts` has `readFileSafe(path, maxBytes)`, which gives an error code and no data instead of stopping the program when a file is missing, a directory or too large.
- `import { a, b } from "./file.ts"` and `export` on declarations. All files share one global namespace, so names must be unique across files. Interfaces are types only, so they must come in through `import type { Node } from "./ast.ts"`: Node's type stripping removes them, and a plain import of one fails at run time.
- Exceptions: `throw "message"`, and `try { ... } catch (e: any) { ... } finally { ... }`. A thrown value is a string, and `e` is that string. The catch variable must be written `: any` (tsc needs it, and chts reads it as a string), and `catch { }` with no variable is allowed. A runtime check that fails is thrown too, so it can be caught: an array index out of range, `pop` from an empty array, a string index out of range, running out of stack, and the other machine faults. For these `e` is the text of the fault, such as `index out of range`. A throw that nothing catches ends the program with `uncaught exception: message`, exit code 70. `return`, `break` and `continue` leave a `try` and run its `finally` first. They are not allowed inside a `finally` block, since they would hide an error being passed on. A throw inside `catch` or `finally` replaces the error in flight, as in JavaScript. See "Exceptions" below.
- Actors: `import { spawn, send, receive, link, monitor, trapExit, kill, sleep } from "./std/actor.ts"`. A process is a function `(arg: string) => void` that runs with its own memory and a mailbox. Messages are strings, copied. A process that crashes, throws, or runs out of memory ends alone and its monitors and links are told. `actors/supervisor.ts` restarts crashed children, with one-for-one and one-for-all strategies and a limit on restarts in a time window. Needs chvm: under node every call stops the program with a message. See `docs/ACTORS.md`.
- Assertions: `import { assertTrue, assertEqNumber, assertEqString, assertNear, assertUnreachable } from "./std/assert.ts"`. A failed one throws `assertion failed: ...`, so it can be caught like any other throw.
- Comments, and semicolons are optional (a newline ends a statement as in JavaScript).

## Left out for now

Closures, arrow functions (a function value is only the name of a top-level function), classes, generics, `null`/`undefined`, union types, enums, `switch`, `for...of`,
template literals, bitwise operators, `**`, regular expressions, error objects (`new Error`, `throw` of anything but a string), `Map`/`Set`, destructuring, spread, `async`.

## Differences from JavaScript, all of which make a program fail loudly instead of silently

- A condition must be a `boolean`: `if (n)` is a compile error, write `if (n !== 0)`.
- Reading or writing an array index outside `0 .. length-1` stops the program (JavaScript gives `undefined`). Assigning at `index === length` is also an error: use `push`.
- Indexes are truncated to whole numbers.
- Strings are bytes. `length`, `charCodeAt` and `slice` count bytes, which is the same as JavaScript for ASCII text.
- There is no garbage collector. Memory is only released when the program ends.
- Integer-valued numbers print without `.0`, exactly as in JavaScript.

## Exceptions

What chts does and node does not. A program that catches `index out of range` prints the same on chvm as it would if it caught a bounds error in a language that throws one, but **node does not throw there**: `a[3]` is `undefined` in JavaScript. So a program that depends on catching a fault runs differently under node, like `fault_index.ts` does without `try`. The tests for these write the expected output down. A `throw "text"` and a catch of it behave the same under both.

- **What is caught:** a `throw`, and a machine fault that leaves the machine intact: array and string index out of range, `pop` of an empty array, a slice out of range, running out of stack (a runaway recursion), division by zero, a bad memory access, a bad return or call address, running out of memory, and a bad heap release. Memory is never changed by a fault that is caught, because the machine checks before it writes.
- **What is not caught:** `TRAP` (the `__trap` the runtime uses to end the program on purpose), a program that was not allowed a call (`-X`, `-N`, `-F`), and a broken `ENDTRY`. They end the program.
- **Costs nothing when not used.** A function with no `try` compiles to exactly the same code as before, and a program with no `try` runs the same instructions. `chbake` drops the `TRY`, `ENDTRY` and `THROW` handlers when a program does not use them.
- **A function that has a `try` keeps all its locals in memory** and saves all the callee-saved registers on entry. That makes it slower than one without: a throw skips the epilogue of every call it leaves, so after a catch the registers are loaded again from the frame and nothing stale can be in one. Keep the `try` in a small function if the loop around it is hot. The stack of handlers holds up to 262,144 nested `try` regions, and one more is a stack overflow that can be caught.
- **No stack trace.** An uncaught throw reports the place of the `throw`. A caught error is only its text.
- **The heap is not rolled back.** A throw leaves memory allocated since the `try` where it is. Use `arenaMark` and `arenaFree` around the `try` when it matters (Praline does for each request).
- **`finally`:** the block runs once on every way out: the end of the `try`, a `return`, `break` or `continue`, a throw that was caught, and a throw that was not. The code of the block is copied to each of those places, so a large `finally` makes the function larger.

## Runtime

The runtime (strings, arrays, allocation, printing) is written in chts too, in `src/prelude.ts`, and is compiled
together with every program. It reaches the machine through intrinsic functions named `__something`.

## How values are held (the machine contract)

Every value in a register or a slot is 8 bytes, and **the compiler never mixes meanings**:

| Type | Held as |
|---|---|
| `number` | an IEEE double |
| `boolean` | the integer 0 or 1 |
| `string`, `T[]`, interface | the integer address of the object |
| `any` | whatever the producer put there (the runtime uses it for addresses) |

`__toaddr(p)` and `__fromaddr(n)` convert between an address and a `number` by converting the
integer to a double and back. Addresses stay below 2^53, so this is exact. The runtime does all
address arithmetic on `number`s, and the intrinsics convert a `number` argument to an integer
(`F2I`) just before the instruction that needs one.

Functions take their arguments in `r1`..`r5` as the values above and return the result in `r0`.
Generated assembly calls runtime functions the same way, so there is only one convention.

## Generated code

The code generator keeps the busiest locals in registers `r9`-`r13` (chosen by use count, weighted
by loop depth) and computes expressions in `r1`-`r8`. Arguments are computed straight into the
registers they are passed in. A top-level variable that no function uses is an ordinary local of the
top-level code, so it lives in a register too. A function that needs no memory locals has no frame
pointer: it saves the registers it uses with `PUSH` and `POP`.

Conditions in `if`, `while` and `for` become one fused compare-and-branch. NaN is handled with
dedicated "not less than" branches, because `!(a < b)` is not `a >= b` when either side is NaN.

### Instruction-saving rules in the generator

These only change how few instructions run, never what the program prints:

- A result is computed straight into a variable's register when the right side has no call.
- A constant on the left of `+` or `*` is moved to the right so the immediate form applies.
- `while` and `for` loops are inverted: the test runs once before the loop and again at the bottom.
- Variables in separate blocks, whose lifetimes do not overlap, share a saved register.
- A function that starts with `if (test) return value`, using only parameters, answers before saving registers.
- A comparison with a whole number that fits 32 bits is a single branch (`BFLTK`) with the number in the next slot.
- A `const` number set from a literal is replaced by its value at every read, so it needs no register.
- In a loop with no calls and no stores, `a[i]` read as `a[i][k]` is loaded once before the loop.
- A call to a small pure function (one `return` of arithmetic, comparisons, `&& || ! ?:`, reads of fields and elements, and a few `Math` builtins) is replaced by its body. A parameter that is used more than once, or only on a conditional path, is replaced only when its argument is a variable or a constant, so an argument is never run twice or skipped. A fault inside an inlined body is reported at the call, not in the function.
- A counting loop `for (...; i < bound; i++)` ends in one instruction that adds, compares and branches, when the counter is in a register and the bound is a constant or a register the body never writes.
- The VM has 32 registers, and the generator keeps locals in 21 of them.

### Exceptions

`try { A } catch (e) { B } finally { C }` is `TRY fin`, `TRY catch`, A, `ENDTRY`, a jump past the catch, then at `catch:` reload the saved registers, turn r0 and r1 into the string `e` (`__catch_value`), and run B, then `ENDTRY` for the finally handler and C. At `fin:` the saved registers are reloaded again, the error is kept in a hidden variable, C runs, and the error is thrown again. A `return` pushes its value, removes the handlers it leaves, runs the `finally` blocks it leaves, and pops the value into r0. `break` and `continue` do the same up to their loop. The machine saves `sp` and `fp` in each handler record and restores them on a throw. Nothing else is saved by the machine.

### Function values

A function value is the code address of the function (`LI rd, f_name`), held in an 8-byte slot like any other value. A call through one pushes the callee, computes the arguments into `r1`..`rN`, pops the callee into `r0` and runs `CALLR r0`. The VM checks that the target is a valid code address, so a bad address stops the program instead of jumping anywhere.

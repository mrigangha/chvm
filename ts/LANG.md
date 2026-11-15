# chts: the language

A strict subset of TypeScript. Every chts program is valid TypeScript (`tsc --strict`) and runs
unchanged under `node prog.ts`, with the same output. The subset is chosen so the compiler itself,
written in it, can be compiled by itself.

## Included

- Types: `number` (always a double), `string`, `boolean`, `void`, `T[]`, interface names, and `any`. `any` is an untyped 64-bit value that converts to and from every type. It exists to build self-referencing sentinel objects, so use it rarely.
- `interface Name { a: number; b: string }`. Instances are references, fields are mutable.
- Object literals `{ a: 1, b: "x" }` (all fields, written out in full) and array literals `[1, 2]`.
- `let` and `const` with one declarator. Top-level ones are globals.
- Functions: top-level `function` declarations only, parameter and return types always written, at most 5 parameters, recursion allowed.
- Statements: block, `if`/`else`, `while`, `for(;;)`, `break`, `continue`, `return`, expression statement.
- Operators: `+ - * / %`, `< <= > >= === !== == !=`, `&& || !`, `?:`, `= += -= *= /= %=`, `++ --`, unary `-`.
- Strings: `+` joins a string with a string, number or boolean. `s.length`, `s.charCodeAt(i)`, `s.slice(a, b)`, `s.indexOf(t)`, `String.fromCharCode(n)`.
- Arrays: `a.length`, `a[i]`, `a[i] = v`, `a.push(v)`, `a.pop()`, `a.join(sep)` (on `string[]`), `a.slice(a, b)`.
- `Math.floor ceil trunc abs sqrt min max`, `Number(s)`, `console.log(...)`, `console.error(...)`.
- `import { a, b } from "./file.ts"` and `export` on declarations. All files share one global namespace, so names must be unique across files. Interfaces are types only, so they must come in through `import type { Node } from "./ast.ts"`: Node's type stripping removes them, and a plain import of one fails at run time.
- Comments, and semicolons are optional (a newline ends a statement as in JavaScript).

## Left out for now

Closures, arrow functions, classes, generics, `null`/`undefined`, union types, enums, `switch`, `for...of`,
template literals, bitwise operators, `**`, regular expressions, exceptions, `Map`/`Set`, destructuring, spread, `async`.

## Differences from JavaScript, all of which make a program fail loudly instead of silently

- A condition must be a `boolean`: `if (n)` is a compile error, write `if (n !== 0)`.
- Reading or writing an array index outside `0 .. length-1` stops the program (JavaScript gives `undefined`). Assigning at `index === length` is also an error: use `push`.
- Indexes are truncated to whole numbers.
- Strings are bytes. `length`, `charCodeAt` and `slice` count bytes, which is the same as JavaScript for ASCII text.
- There is no garbage collector. Memory is only released when the program ends.
- Integer-valued numbers print without `.0`, exactly as in JavaScript.

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

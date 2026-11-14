# Benchmark results

`-O2`, best of 3, one machine. Re-run with `make && bench/run.sh`.

## Register VM (current)

| Build | fib35 | loop (100M iterations) | memfill (3000 passes) |
|-------|-------|------------------------|-----------------------|
| `switch` (`-DCHVM_SWITCH`) | 0.482 s | 0.431 s | 0.128 s |
| computed goto (default) | 0.384 s | 0.324 s | see run.sh |

## Stack VM (replaced)

| Build | fib35 | loop (100M iterations) |
|-------|-------|------------------------|
| `switch` | 0.377 s | 1.473 s |
| computed goto | 0.269 s | 0.965 s |

## Notes

- The loop is 2.7x faster on registers: 4 instructions per iteration instead of about 10.
- fib is 1.5x slower. Each call saves and restores `r1` and `r0` through linear memory, and `CALL`/`RET` do a bounds-checked 8-byte store and load. The stack VM kept its frames in separate arrays and passed arguments in place.
- Possible fixes: callee-saved registers so fewer `PUSH`/`POP` pairs are needed, a cheaper stack bounds check, or a `CALL` that does not go through `memcpy`.

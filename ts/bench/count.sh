#!/bin/sh
# Counts the instructions each benchmark executes, with a copy of the VM that counts every dispatch.
# Rebuilds the counting VM from src/vm.c each time, so new opcodes are always known.
# Usage: sh bench/count.sh   (after make, from anywhere)
cd "$(dirname "$0")/.." || exit 1
ROOT=$(cd .. && pwd)
T=${TMPDIR:-/tmp}/chvm_count
mkdir -p "$T"
python3 - "$ROOT" "$T" <<'PY'
import sys
root, t = sys.argv[1:3]
s = open(root + '/src/vm.c').read()
s = s.replace('#define DISPATCH() goto *labels[pc->op]', '#define DISPATCH() do { icount++; goto *labels[pc->op]; } while (0)')
s = s.replace('vm_status vm_run(', 'static unsigned long long icount;\nvm_status vm_run(', 1)
assert 'done:\n    fflush(stdout);\n' in s, 'the end of vm_run moved: update count.sh'
s = s.replace('done:\n    fflush(stdout);\n', 'done:\n    fflush(stdout); fprintf(stderr, "insns %llu\\n", icount);\n', 1)
open(t + '/vm_count.c', 'w').write(s)
PY
FF=""; LL="-lm"
if pkg-config --exists libffi 2>/dev/null; then FF="-DCHVM_FFI $(pkg-config --cflags libffi)"; LL="-lm $(pkg-config --libs libffi) -ldl"; fi
# shellcheck disable=SC2086
cc -O2 -std=gnu11 -I"$ROOT/src" $FF -o "$T/chvm_count" "$ROOT/src/main.c" "$T/vm_count.c" "$ROOT/src/sys.c" "$ROOT/src/foreign.c" "$ROOT/src/chbc.c" $LL || exit 1
export CHVM_BIN="$ROOT/build"
total=0
printf '%-9s %14s\n' program instructions
for n in loop fib collatz sieve matmul objects strings; do
    node src/chts.ts -o "$T/$n.chbc" "bench/$n.ts" || exit 1
    mem=""; [ "$n" = sieve ] && mem="-m 600000000"
    c=$("$T/chvm_count" $mem "$T/$n.chbc" 2>&1 >/dev/null | awk '/^insns/{print $2}')
    printf '%-9s %14d\n' "$n" "$c"
    total=$((total + c))
done
printf '%-9s %14d\n' TOTAL "$total"

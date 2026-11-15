#!/bin/sh
# End to end: source file to finished output, compile time included.
#   chvm path:  chts (self-hosted, runs on chvm) -> chasm -> chvm
#   node path:  tsc (type check + emit JavaScript) -> node, and node alone with type stripping
# Best of 3, wall clock in ms. Needs `sh build_self.sh` first, and tsc in $TSC.
cd "$(dirname "$0")/.." || exit 1
ROOT=$(cd .. && pwd)
BIN="$ROOT/build"
TSC=${TSC:-/tmp/opencode/tsc/node_modules/.bin/tsc}
T=$(mktemp -d)
trap 'rm -rf "$T"' EXIT
now() { date +%s%N; }
best() {   # best of 3, in units of 0.1 ms, of the command given
    b=999999999
    for _ in 1 2 3; do
        s=$(now); "$@" >/dev/null 2>&1; e=$(now)
        t=$(( (e - s) / 100000 ))
        [ "$t" -lt "$b" ] && b=$t
    done
    echo "$b"
}
f1() { awk "BEGIN { printf \"%.1f\", $1 / 10 }"; }
printf '%-9s | %7s %7s %7s %8s | %7s %7s %8s | %8s\n' program chts chasm run 'chvm tot' tsc run 'node tot' 'node-only'
for n in loop fib collatz sieve matmul objects strings; do
    f=bench/$n.ts
    mem=""; [ "$n" = sieve ] && mem="-m 600000000"
    tc=$(best "$BIN/chvm" out/chts.chbc -S -o "$T/$n.asm" "$f")
    "$BIN/chvm" out/chts.chbc -S -o "$T/$n.asm" "$f" 2>/dev/null
    ta=$(best "$BIN/chasm" "$T/$n.asm" "$T/$n.chbc")
    "$BIN/chasm" "$T/$n.asm" "$T/$n.chbc"
    tr=$(best "$BIN/chvm" $mem "$T/$n.chbc")
    tot=$(( tc + ta + tr ))
    ts=$(best "$TSC" --strict --target es2022 --module commonjs --lib es2022,dom --skipLibCheck --outDir "$T/js" "$f")
    "$TSC" --strict --target es2022 --module commonjs --lib es2022,dom --skipLibCheck --outDir "$T/js" "$f" >/dev/null 2>&1
    tj=$(best node "$T/js/$n.js")
    totn=$(( ts + tj ))
    tn=$(best node "$f")
    printf '%-9s | %7s %7s %7s %8s | %7s %7s %8s | %8s\n' $n "$(f1 $tc)" "$(f1 $ta)" "$(f1 $tr)" "$(f1 $tot)" "$(f1 $ts)" "$(f1 $tj)" "$(f1 $totn)" "$(f1 $tn)"
done

#!/bin/sh
# Compares the two finished artifacts, with compile time left out:
#   prog.chbc  made by chts from bench/<n>.ts, run on chvm
#   prog.exe   made by gcc from bench/c/<n>.c (same algorithm, same data layout), run natively
# Best of 5 wall clock runs. Needs the root `make` and node for the compile step.
cd "$(dirname "$0")/.." || exit 1
ROOT=$(cd .. && pwd)
BIN="$ROOT/build"
export CHVM_BIN="$BIN"
T=$(mktemp -d)
trap 'rm -rf "$T"' EXIT
best() {
    b=999999999
    for _ in 1 2 3 4 5; do
        s=$(date +%s%N); "$@" >/dev/null 2>&1; e=$(date +%s%N)
        t=$(( (e - s) / 10000 ))
        [ "$t" -lt "$b" ] && b=$t
    done
    echo "$b"
}
ms() { awk "BEGIN { printf \"%.1f\", $1 / 100 }"; }
printf '%-9s | %9s %9s %9s | %8s %8s | %9s %9s\n' program 'gcc -O2' 'gcc -O0' 'chvm' 'vs -O2' 'vs -O0' 'chbc size' 'exe size'
for n in loop fib collatz sieve matmul objects strings; do
    node src/chts.ts -o "$T/$n.chbc" "bench/$n.ts" || exit 1
    gcc -O2 -o "$T/$n.o2" "bench/c/$n.c" -lm || exit 1
    gcc -O0 -o "$T/$n.o0" "bench/c/$n.c" -lm || exit 1
    mem=""; [ "$n" = sieve ] && mem="-m 600000000"
    "$BIN/chvm" $mem "$T/$n.chbc" >"$T/a" 2>&1; "$T/$n.o2" >"$T/b" 2>&1
    cmp -s "$T/a" "$T/b" || echo "  note: $n outputs differ"
    t2=$(best "$T/$n.o2"); t0=$(best "$T/$n.o0"); tv=$(best "$BIN/chvm" $mem "$T/$n.chbc")
    printf '%-9s | %9s %9s %9s | %7sx %7sx | %9s %9s\n' $n "$(ms $t2)" "$(ms $t0)" "$(ms $tv)" \
        "$(awk "BEGIN { printf \"%.1f\", $tv / $t2 }")" "$(awk "BEGIN { printf \"%.1f\", $tv / $t0 }")" \
        "$(wc -c < "$T/$n.chbc")" "$(wc -c < "$T/$n.o2")"
done

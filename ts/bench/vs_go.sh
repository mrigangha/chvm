#!/bin/sh
# Compares finished programs, compile time left out: chvm (chts output), Go (go build), gcc -O2.
# Then the full cost from source to result, compile time included.
# Same algorithms and data layout in all three (doubles for numbers, growable slices, bounds checks).
cd "$(dirname "$0")/.." || exit 1
ROOT=$(cd .. && pwd)
BIN="$ROOT/build"
export CHVM_BIN="$BIN"
T=$(mktemp -d)
trap 'rm -rf "$T"' EXIT
export GOCACHE="$T/gocache"
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
echo "run time only (ms, best of 5)"
printf '%-9s | %9s %9s %9s | %10s %10s\n' program 'gcc -O2' 'go' 'chvm' 'chvm/go' 'go/gcc'
for n in loop fib collatz sieve matmul objects strings; do
    node src/chts.ts -o "$T/$n.chbc" "bench/$n.ts" || exit 1
    gcc -O2 -o "$T/$n.gcc" "bench/c/$n.c" -lm || exit 1
    go build -o "$T/$n.go" "bench/go/$n.go" || exit 1
    mem=""; [ "$n" = sieve ] && mem="-m 600000000"
    tg=$(best "$T/$n.gcc"); to=$(best "$T/$n.go"); tv=$(best "$BIN/chvm" $mem "$T/$n.chbc")
    printf '%-9s | %9s %9s %9s | %9sx %9sx\n' $n "$(ms $tg)" "$(ms $to)" "$(ms $tv)" \
        "$(awk "BEGIN { printf \"%.1f\", $tv / $to }")" "$(awk "BEGIN { printf \"%.1f\", $to / $tg }")"
done
echo
echo "compile time (ms, best of 3). go uses a warm build cache, as in normal use:"
echo "a cold cache also builds the standard library and takes about 2.6 s."
printf '%-9s | %9s %11s %11s\n' program 'gcc -O2' 'go build' 'chts+chasm'
for n in loop fib collatz sieve matmul objects strings; do
    GOCACHE="$T/gocache" go build -o "$T/x" "bench/go/$n.go" >/dev/null 2>&1   # warm the cache
    best3() { b=999999999; for _ in 1 2 3; do s=$(date +%s%N); "$@" >/dev/null 2>&1; e=$(date +%s%N); t=$(( (e - s) / 10000 )); [ "$t" -lt "$b" ] && b=$t; done; echo "$b"; }
    tg=$(best3 gcc -O2 -o "$T/x" "bench/c/$n.c" -lm)
    tgo=$(best3 sh -c "touch bench/go/$n.go; GOCACHE=$T/gocache go build -o $T/x bench/go/$n.go")
    tc=$(best3 sh -c "$BIN/chvm out/chts.chbc -S -H src/host_chvm.ts -o $T/y.asm bench/$n.ts && $BIN/chasm $T/y.asm $T/y.chbc")
    printf '%-9s | %9s %11s %11s\n' $n "$(ms $tg)" "$(ms $tgo)" "$(ms $tc)"
done

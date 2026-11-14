#!/bin/sh
# Times the same five programs on chvm (hand-written assembly), node (plain JavaScript) and native C -O2.
# Best of 5, wall clock. Build chvm first (make in the repository root).
cd "$(dirname "$0")" || exit 1
BIN=../../build
T=$(mktemp -d)
trap 'rm -rf "$T"' EXIT
best() {
    b=999999999
    for _ in 1 2 3 4 5; do
        s=$(date +%s%N); "$@" >/dev/null 2>&1; e=$(date +%s%N)
        t=$(( (e - s) / 10000 ))      # units of 0.01 ms
        [ "$t" -lt "$b" ] && b=$t
    done
    echo "$b"
}
ms() { awk "BEGIN { printf \"%.1f\", $1 / 100 }"; }
startup=$(best node -e 0)
printf 'node startup alone: %s ms\n\n' "$(ms "$startup")"
printf '%-9s %9s %9s %12s %9s %12s\n' program 'C -O2' 'chvm' 'node' 'node-start' 'chvm/node'
for n in loop fib collatz sieve matmul; do
    $BIN/chasm $n.asm "$T/$n.chbc" || exit 1
    gcc -O2 -o "$T/$n.c.bin" $n.c || exit 1
    tc=$(best "$T/$n.c.bin")
    tv=$(best $BIN/chvm "$T/$n.chbc")
    tn=$(best node $n.js)
    net=$(( tn - startup ))
    printf '%-9s %8s %9s %12s %9s %11sx\n' $n "$(ms $tc)" "$(ms $tv)" "$(ms $tn)" "$(ms $net)" "$(awk "BEGIN { printf \"%.1f\", $tv / $tn }")"
done

#!/bin/sh
# Times each benchmark on node (type stripping) and on chvm, best of 3, startup included.
# Usage: sh bench/run.sh [name ...]
cd "$(dirname "$0")/.." || exit 1
ROOT=$(cd .. && pwd)
BIN="$ROOT/build"
export CHVM_BIN="$BIN"
T=$(mktemp -d)
trap 'rm -rf "$T"' EXIT
best() {  # best wall time in ms of 3 runs of the given command
    b=999999
    for _ in 1 2 3; do
        s=$(date +%s%N)
        "$@" >/dev/null 2>&1
        e=$(date +%s%N)
        t=$(( (e - s) / 1000000 ))
        [ "$t" -lt "$b" ] && b=$t
    done
    echo "$b"
}
names="$*"
[ -z "$names" ] && names=$(ls bench/*.ts | xargs -n1 basename | sed 's/\.ts$//')
printf '%-10s %10s %10s %10s\n' benchmark node-ms chvm-ms 'chvm/node'
for n in $names; do
    node src/chts.ts -o "$T/$n.chbc" "bench/$n.ts" 2>/dev/null || { echo "$n: compile failed"; continue; }
    mem=""
    [ "$n" = sieve ] && mem="-m 600000000"
    tn=$(best node "bench/$n.ts")
    tv=$(best "$BIN/chvm" $mem "$T/$n.chbc")
    ratio=$(awk "BEGIN { if ($tn > 0) printf \"%.1fx\", $tv / $tn; else print \"-\" }")
    printf '%-10s %10s %10s %10s\n' "$n" "$tn" "$tv" "$ratio"
done

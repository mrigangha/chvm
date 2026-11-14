#!/bin/sh
# Usage: bench/run.sh   (after `make`). Prints best-of-3 wall time per benchmark.
cd "$(dirname "$0")/.." || exit 1
T=$(mktemp -d)
trap 'rm -rf "$T"' EXIT
for asm in bench/*.asm; do
    n=$(basename "$asm" .asm)
    build/chasm "$asm" "$T/$n.chbc" || exit 1
    best=
    for _ in 1 2 3; do
        s=$(date +%s.%N)
        build/chvm "$T/$n.chbc" >/dev/null || exit 1
        e=$(date +%s.%N)
        t=$(echo "$e - $s" | bc)
        if [ -z "$best" ] || [ "$(echo "$t < $best" | bc)" = 1 ]; then best=$t; fi
    done
    printf '%-10s %.3fs\n' "$n" "$best"
done

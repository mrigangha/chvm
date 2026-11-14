#!/bin/sh
# Bootstraps the compiler.
#   stage 1  node runs src/chts.ts and compiles src/chts.ts            -> stage1
#   stage 2  chvm runs stage1 and compiles src/chts.ts                 -> stage2
#   stage 3  chvm runs stage2 and compiles src/chts.ts                 -> stage3
# The build is a fixed point when the assembly of stage 2 and stage 3 is byte-identical, and also
# identical to stage 1, which shows the compiler does not depend on the node it was started with.
# The compiler on chvm cannot start chasm yet, so it writes assembly (-S) and this script assembles it.
# The result is out/chts.chbc, a compiler that runs on chvm alone.
cd "$(dirname "$0")" || exit 1
ROOT=$(cd .. && pwd)
BIN="$ROOT/build"
export CHVM_BIN="$BIN"
OUT=out
mkdir -p $OUT
H="-H src/host_chvm.ts"
set -e
node src/chts.ts -S $H -o $OUT/stage1.asm src/chts.ts
"$BIN/chasm" $OUT/stage1.asm $OUT/stage1.chbc
"$BIN/chvm" $OUT/stage1.chbc -S $H -o $OUT/stage2.asm src/chts.ts
"$BIN/chasm" $OUT/stage2.asm $OUT/stage2.chbc
"$BIN/chvm" $OUT/stage2.chbc -S $H -o $OUT/stage3.asm src/chts.ts
if cmp -s $OUT/stage1.asm $OUT/stage2.asm && cmp -s $OUT/stage2.asm $OUT/stage3.asm; then
    "$BIN/chasm" $OUT/stage3.asm $OUT/chts.chbc
    echo "bootstrap ok: stages 1, 2 and 3 are identical ($(wc -l < $OUT/stage3.asm) lines of assembly)"
else
    echo "bootstrap FAILED: stages differ"
    cmp $OUT/stage1.asm $OUT/stage2.asm || true
    cmp $OUT/stage2.asm $OUT/stage3.asm || true
    exit 1
fi

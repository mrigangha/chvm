#!/bin/sh
# Runs every test for the TypeScript compiler. Needs node, and build/chvm and build/chasm.
cd "$(dirname "$0")/.." || exit 1
rc=0
for t in lexer parser checker; do
    node tests/${t}_test.ts || rc=1
done
sh tests/run.sh || rc=1
sh praline/tests/run.sh || rc=1
sh tests/net/run.sh || rc=1
exit $rc

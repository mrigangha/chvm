#!/bin/sh
# Runs the program tests with the self-hosted compiler (out/chts.chbc, started on chvm, no node
# for compiling). Node is only used to produce the expected output. Run build_self.sh first.
cd "$(dirname "$0")/.." || exit 1
ROOT=$(cd .. && pwd)
BIN="$ROOT/build"
if [ ! -f out/chts.chbc ]; then echo "run build_self.sh first"; exit 1; fi
T=$(mktemp -d)
trap 'rm -rf "$T"' EXIT
pass=0
fail=0
for f in tests/programs/*.ts; do
    n=$(basename "$f" .ts)
    if [ -f "tests/programs/$n.err" ]; then
        if "$BIN/chvm" out/chts.chbc -S -o "$T/$n.asm" "$f" 2>"$T/err"; then
            echo "FAIL $n: compiled but should fail"; fail=$((fail + 1))
        elif grep -qF "$(cat "tests/programs/$n.err")" "$T/err"; then pass=$((pass + 1))
        else echo "FAIL $n: wrong error: $(cat "$T/err")"; fail=$((fail + 1)); fi
        continue
    fi
    if ! "$BIN/chvm" out/chts.chbc -S -o "$T/$n.asm" "$f" 2>"$T/err"; then
        echo "FAIL $n (compile): $(head -2 "$T/err")"; fail=$((fail + 1)); continue
    fi
    "$BIN/chasm" "$T/$n.asm" "$T/$n.chbc" || { echo "FAIL $n (assemble)"; fail=$((fail + 1)); continue; }
    if [ -f "tests/programs/$n.rc" ] && [ "$(cat "tests/programs/$n.rc")" -ne 0 ]; then cp "tests/programs/$n.out" "$T/want"
    else node "$f" >"$T/want" 2>/dev/null; fi
    "$BIN/chvm" "$T/$n.chbc" >"$T/got" 2>/dev/null
    rc=$?
    want_rc=0
    [ -f "tests/programs/$n.rc" ] && want_rc=$(cat "tests/programs/$n.rc")
    if [ "$rc" -eq "$want_rc" ] && cmp -s "$T/want" "$T/got"; then pass=$((pass + 1))
    else echo "FAIL $n (rc=$rc, want $want_rc)"; fail=$((fail + 1)); fi
done
echo "self-hosted compiler: passed $pass, failed $fail"
[ $fail -eq 0 ]

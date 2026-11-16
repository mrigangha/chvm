#!/bin/sh
# Runs every Praline test program under node and on chvm (compiled by chts) and compares the output
# and the exit code. Needs build/chvm and build/chasm (run `make` in the repository root).
cd "$(dirname "$0")/../.." || exit 1
ROOT=$(cd .. && pwd)
export CHVM_BIN="$ROOT/build"
T=$(mktemp -d)
trap 'rm -rf "$T"' EXIT
pass=0
fail=0
for f in praline/tests/*.ts; do
    n=$(basename "$f" .ts)
    if [ -f "praline/tests/$n.expected" ]; then
        # node runs this program differently (a bounds check chts makes and node does not): the output is written out
        cp "praline/tests/$n.expected" "$T/want"
        if [ -f "praline/tests/$n.expected_err" ]; then cp "praline/tests/$n.expected_err" "$T/want_err"; else : >"$T/want_err"; fi
        want_rc=0
    else
        node "$f" >"$T/want" 2>"$T/want_err"
        want_rc=$?
    fi
    if ! node src/chts.ts -o "$T/$n.chbc" "$f" 2>"$T/err"; then
        echo "FAIL $n (compile): $(head -3 "$T/err")"; fail=$((fail + 1)); continue
    fi
    "$CHVM_BIN/chvm" "$T/$n.chbc" >"$T/got" 2>"$T/got_err"
    rc=$?
    if [ "$rc" -eq "$want_rc" ] && cmp -s "$T/want" "$T/got" && cmp -s "$T/want_err" "$T/got_err"; then
        pass=$((pass + 1))
    else
        echo "FAIL $n (rc=$rc, want $want_rc)"; diff "$T/want" "$T/got" | head -6; diff "$T/want_err" "$T/got_err" | head -4
        fail=$((fail + 1))
    fi
done
echo "praline: passed $pass, failed $fail"
[ $fail -eq 0 ]

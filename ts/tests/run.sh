#!/bin/sh
# Compiles every tests/programs/*.ts with chts, runs it on chvm, and compares the output with
# node running the same file. Programs that must fail to compile have a .err file with the
# expected message. Needs build/chvm and build/chasm (run `make` in the repository root).
cd "$(dirname "$0")/.." || exit 1
ROOT=$(cd .. && pwd)
export CHVM_BIN="$ROOT/build"
T=$(mktemp -d)
trap 'rm -rf "$T"' EXIT
pass=0
fail=0
for f in tests/programs/*.ts; do
    n=$(basename "$f" .ts)
    if [ -f "tests/programs/$n.err" ]; then
        if node src/chts.ts -o "$T/$n.chbc" "$f" 2>"$T/err"; then
            echo "FAIL $n: compiled but should fail"; fail=$((fail + 1))
        elif grep -qF "$(cat "tests/programs/$n.err")" "$T/err"; then
            pass=$((pass + 1))
        else
            echo "FAIL $n: wrong error: $(cat "$T/err")"; fail=$((fail + 1))
        fi
        continue
    fi
    if ! node src/chts.ts -o "$T/$n.chbc" "$f" 2>"$T/err"; then
        echo "FAIL $n (compile): $(head -3 "$T/err")"; fail=$((fail + 1)); continue
    fi
    if [ -f "tests/programs/$n.rc" ] && [ "$(cat "tests/programs/$n.rc")" -ne 0 ]; then
        # a program that must stop with a fault: its output up to the fault is what node would print
        node "$f" 2>/dev/null | head -n "$(grep -c . "tests/programs/$n.out" 2>/dev/null || echo 0)" >"$T/want"
        if [ -f "tests/programs/$n.out" ]; then cp "tests/programs/$n.out" "$T/want"; else : >"$T/want"; fi
    elif [ -f "tests/programs/$n.out" ]; then
        # a program that node runs differently (a stack overflow, a fault node does not have): the output is written out
        cp "tests/programs/$n.out" "$T/want"
    else
        node "$f" >"$T/want" 2>/dev/null
    fi
    vmargs=""
    [ -f "tests/programs/$n.vmargs" ] && vmargs=$(cat "tests/programs/$n.vmargs")
    # shellcheck disable=SC2086
    "$CHVM_BIN/chvm" $vmargs "$T/$n.chbc" >"$T/got" 2>"$T/err"
    rc=$?
    if [ -f "tests/programs/$n.rc" ]; then want_rc=$(cat "tests/programs/$n.rc"); else want_rc=0; fi
    if [ "$rc" -eq "$want_rc" ] && cmp -s "$T/want" "$T/got"; then
        pass=$((pass + 1))
    else
        echo "FAIL $n (rc=$rc, want $want_rc)"; diff "$T/want" "$T/got" | head -6; head -2 "$T/err"
        fail=$((fail + 1))
    fi
done
echo "programs: passed $pass, failed $fail"
[ $fail -eq 0 ]

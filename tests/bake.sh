#!/bin/sh
# Bakes each plain test program into a standalone executable with only the instructions it uses, and
# checks it prints the same output and exits with the same code as chvm running the .chbc file.
# Programs that need arguments, stdin, a memory flag or the native test library are skipped.
# Usage: sh tests/bake.sh   (after make)
cd "$(dirname "$0")/.." || exit 1
B=build
T=$(mktemp -d)
trap 'rm -rf "$T"' EXIT
cc_flags="-O1 -std=gnu11 -fno-crossjumping --param max-goto-duplication-insns=32 -Isrc"
libs="-lm"
if [ -f "$B/libchvmtest.so" ]; then
    cc_flags="$cc_flags -DCHVM_FFI $(pkg-config --cflags libffi)"
    libs="$libs $(pkg-config --libs libffi) -ldl"
fi
pass=0
fail=0
skipped=0
for asm in tests/cases/*.asm; do
    n=$(basename "$asm" .asm)
    if [ -f "tests/cases/$n.ffi" ] || [ -f "tests/cases/$n.args" ] || [ -f "tests/cases/$n.in" ] ||
       [ -f "tests/cases/$n.vmargs" ] || [ -f "tests/cases/$n.needffi" ] || [ -f "tests/cases/$n.spawn" ] ||
       [ -f "tests/cases/$n.net" ] || [ -f "tests/cases/$n.client" ]; then
        skipped=$((skipped + 1))
        continue
    fi
    $B/chasm -s "$asm" "$T/$n.chbc" 2>/dev/null || { skipped=$((skipped + 1)); continue; }
    $B/chvm "$T/$n.chbc" >"$T/ref.out" 2>/dev/null; echo $? >"$T/ref.rc"
    if ! $B/chbake "$T/$n.chbc" "$T/$n.c" 2>"$T/err"; then
        echo "FAIL $n (bake): $(head -1 "$T/err")"; fail=$((fail + 1)); continue
    fi
    # shellcheck disable=SC2086
    if ! cc $cc_flags -o "$T/$n.exe" "$T/$n.c" src/chbc.c src/sys.c src/foreign.c $libs 2>"$T/err"; then
        echo "FAIL $n (compile): $(head -2 "$T/err")"; fail=$((fail + 1)); continue
    fi
    "$T/$n.exe" >"$T/got.out" 2>/dev/null; echo $? >"$T/got.rc"
    if cmp -s "$T/ref.out" "$T/got.out" && cmp -s "$T/ref.rc" "$T/got.rc"; then
        pass=$((pass + 1))
    else
        echo "FAIL $n: output or exit code differs from chvm"; fail=$((fail + 1))
    fi
done
# --net: a baked program may use the network only when it was baked with --net
if command -v python3 >/dev/null 2>&1; then
    $B/chasm tests/cases/net_echo.asm "$T/echo.chbc" && $B/chbake "$T/echo.chbc" "$T/echo0.c" && $B/chbake --net "$T/echo.chbc" "$T/echo1.c"
    # shellcheck disable=SC2086
    if cc $cc_flags -o "$T/echo0" "$T/echo0.c" src/chbc.c src/sys.c src/foreign.c $libs 2>"$T/err" &&
       cc $cc_flags -o "$T/echo1" "$T/echo1.c" src/chbc.c src/sys.c src/foreign.c $libs 2>>"$T/err"; then
        "$T/echo0" >"$T/net0.out" 2>/dev/null </dev/null
        if [ "$(head -n 1 "$T/net0.out")" = "-1" ]; then pass=$((pass + 1)); else echo "FAIL baked without --net must refuse the network"; fail=$((fail + 1)); fi
        : >"$T/net1.out"
        "$T/echo1" >"$T/net1.out" 2>/dev/null &
        pid=$!
        tries=0
        while [ ! -s "$T/net1.out" ] && [ $tries -lt 100 ] && kill -0 $pid 2>/dev/null; do sleep 0.05; tries=$((tries + 1)); done
        if python3 tests/cases/net_echo.client "$(head -n 1 "$T/net1.out")" 2>/dev/null | grep -q "HELLO, PRALINE 123"; then
            pass=$((pass + 1))
        else
            echo "FAIL baked with --net did not serve a client"; fail=$((fail + 1))
        fi
        wait $pid 2>/dev/null
    else
        echo "FAIL --net (compile): $(head -2 "$T/err")"; fail=$((fail + 2))
    fi
fi
echo "baked: passed $pass, failed $fail, skipped $skipped"
[ $fail -eq 0 ]

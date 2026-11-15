#!/bin/sh
# Runs every tests/cases/*.asm.
#   <name>.out  expected stdout (run must exit with <name>.rc, default 0)
#   <name>.err  expected stderr substring (run must fail)
#   <name>.args program arguments, <name>.vmargs chvm options, <name>.in stdin (all optional)
#   <name>.ffi  run with -F, the test library path is program argument 1
#   <name>.needffi  skipped in a build without libffi, but run without -F
cd "$(dirname "$0")/.." || exit 1
B=build
T=$(mktemp -d)
trap 'rm -rf "$T"' EXIT
pass=0
fail=0

# a build without libffi refuses -F with exit code 64
printf 'HALT\n' >"$T/h.asm"; $B/chasm "$T/h.asm" "$T/h.chbc"
if $B/chvm -F "$T/h.chbc" 2>/dev/null && [ -f "$B/libchvmtest.so" ]; then have_ffi=1; else have_ffi=0; fi

ok()  { pass=$((pass + 1)); }
bad() { echo "FAIL $*"; fail=$((fail + 1)); }

for asm in tests/cases/*.asm; do
    n=$(basename "$asm" .asm)
    if ! $B/chasm "$asm" "$T/$n.chbc" 2>"$T/asm.err"; then
        bad "$n (assemble): $(cat "$T/asm.err")"
        continue
    fi
    vmargs=; pargs=
    [ -f "tests/cases/$n.vmargs" ] && vmargs=$(cat "tests/cases/$n.vmargs")
    [ -f "tests/cases/$n.args" ] && pargs=$(cat "tests/cases/$n.args")
    # shellcheck disable=SC2086
    if [ -f "tests/cases/$n.ffi" ] || [ -f "tests/cases/$n.needffi" ]; then
        if [ "$have_ffi" != 1 ]; then
            echo "skip $n (no foreign call support in this build)"
            continue
        fi
    fi
    if [ -f "tests/cases/$n.ffi" ]; then
        vmargs="-F $vmargs"
        pargs="$B/libchvmtest.so $pargs"
    fi
    in=/dev/null
    [ -f "tests/cases/$n.in" ] && in="tests/cases/$n.in"
    $B/chvm $vmargs "$T/$n.chbc" $pargs <"$in" >"$T/out" 2>"$T/err"
    rc=$?
    if [ -f "tests/cases/$n.out" ]; then
        want=0
        [ -f "tests/cases/$n.rc" ] && want=$(cat "tests/cases/$n.rc")
        [ -f "tests/cases/$n.err" ] && want=70
        errok=1
        if [ -f "tests/cases/$n.err" ] && ! grep -qF "$(cat "tests/cases/$n.err")" "$T/err"; then
            errok=0
        fi
        if [ "$rc" -eq "$want" ] && [ "$errok" -eq 1 ] && cmp -s "$T/out" "tests/cases/$n.out"; then
            ok
        else
            bad "$n (rc=$rc, want $want, stderr: $(head -c 200 "$T/err"))"
            diff "tests/cases/$n.out" "$T/out" | head -5
        fi
    elif [ "$rc" -ne 0 ] && grep -qF "$(cat "tests/cases/$n.err")" "$T/err"; then
        ok
    else
        bad "$n (rc=$rc): $(cat "$T/err")"
    fi
done

# disassembler round trip: -n output must reassemble to identical code
for asm in tests/cases/*.asm; do
    n=$(basename "$asm" .asm)
    $B/chasm -s "$asm" "$T/$n.a" 2>/dev/null || continue
    if ! $B/chdis -n "$T/$n.a" >"$T/$n.dis" 2>"$T/err"; then
        bad "chdis failed on $n: $(cat "$T/err")"
        continue
    fi
    if ! $B/chasm -s "$T/$n.dis" "$T/$n.b" 2>"$T/err"; then
        bad "disassembly of $n does not reassemble: $(head -1 "$T/err")"
        continue
    fi
    cs=$(od -An -tu4 -j12 -N4 "$T/$n.a" | tr -d ' ')
    entry_a=$(od -An -tu4 -j8 -N4 "$T/$n.a")
    entry_b=$(od -An -tu4 -j8 -N4 "$T/$n.b")
    tail -c +33 "$T/$n.a" | head -c "$cs" >"$T/$n.ca"
    tail -c +33 "$T/$n.b" | head -c "$cs" >"$T/$n.cb"
    if cmp -s "$T/$n.ca" "$T/$n.cb" && [ "$entry_a" = "$entry_b" ]; then ok; else bad "round trip differs: $n"; fi
done

printf 'nope' >"$T/g.chbc"

# disassembler rejects what the loader rejects, and a usage error
if $B/chdis "$T/g.chbc" 2>"$T/err"; then bad "chdis accepted garbage"; elif grep -qF "bad file size" "$T/err"; then ok; else bad "chdis wrong error: $(cat "$T/err")"; fi
$B/chdis 2>/dev/null; [ $? -eq 64 ] && ok || bad "chdis no-argument exit code"
$B/chdis /nonexistent 2>/dev/null; [ $? -eq 65 ] && ok || bad "chdis missing file exit code"

# assembler rejects bad source
i=0
while IFS='|' read -r src want; do
    i=$((i + 1))
    printf '%b\n' "$src" >"$T/s$i.asm"
    if $B/chasm "$T/s$i.asm" "$T/s$i.chbc" 2>"$T/err"; then
        bad "asm accepted: $src"
    elif grep -qF "$want" "$T/err"; then
        ok
    else
        bad "asm wrong error for '$src': $(cat "$T/err")"
    fi
done <<'LIST'
ADD r1, r2|takes 3 operand
ADD r1, r2, r32|expected a register
FOO r1|unknown instruction
JMP nowhere|undefined label
ADDI r1, r1, 0x100000000|out of 32-bit range
LD64 r1, r2|expected [reg+offset]
.equ X, later|must be a number or an earlier constant
.equ X, 1\n.equ X, 2|defined twice
.equ r3, 1|is a register name
.data\nx: .word 1\n.code\nJMP x|not a code label
.bss\nx: .zero 8\n.code\nJMP x|not a code label
.bss\n.byte 1|only labels, .zero and .align
.bss\n.word 1|only labels, .zero and .align
.data\n.align 3|power of two
SEL r1, r2, r3|takes 4 operand
SEL r1, r2, r3, 4|expected a register
SEL r1, r2, r3, r32|expected a register
LIFS r1|takes 2 operands
LIFS r1, abc|bad float
LIFS r1, 0x10|bad float
CLZ r1|takes 2 operand
MULH r1, r2|takes 3 operand
.data\n.float 1.5x|bad float
.func a\na: HALT|has no .endfunc
.endfunc|without .func
.func a\n.func b\na: HALT|starts before .endfunc
.func a\n.endfunc\nHALT|is empty
.func a\nHALT\n.endfunc|is not a code label
.line x\nHALT|needs a line number
.line -1\nHALT|needs a line number
.file foo\nHALT|needs a quoted name
.data\n.func a\n.code\nHALT|only valid in .code
BEQI r1, 32768, x\nx: HALT|needs a constant from -32768 to 32767
BEQI r1, -32769, x\nx: HALT|needs a constant from -32768 to 32767
BEQI r1, r2, x\nx: HALT|needs a constant
JTAB r1, -1, x\nx: HALT|needs a constant from 0 to 65535
JTAB r1, 65536, x\nx: HALT|needs a constant from 0 to 65535
BGTUI r1, -1, x\nx: HALT|not negative
BGTI r1, 5\nx: HALT|takes register, constant, label
MEMCMP r1, r2, r3|takes 4 operand
MEMCMP r1, r2, r3, 7|expected a register
MEMCPY r1, r2|takes 3 operand
.bss\n.align 32|power of two
.data\n.zero -1|needs a count
.data\n.word nothere|undefined label
.data\n.word 1+|bad number or label
.code\n.byte 1|not valid in .code
.data\nADD r1, r2, r3|outside .code
LI r1, 1+|bad operand
ADDI r1, r1, 0x80000000|out of 32-bit range
ADDI r1, r1, 1+2|bad operand
LIST

# loader and verifier reject bad files
hdr() { printf 'CHBC\004\000\000\000\000\000\000\000%b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000' "$1"; }
hdr '\010\000\000\000' >"$T/v1.chbc"; printf '\377\000\000\000\000\000\000\000' >>"$T/v1.chbc"
hdr '\010\000\000\000' >"$T/v2.chbc"; printf '\001\000\000\000\000\000\000\000' >>"$T/v2.chbc"
hdr '\003\000\000\000' >"$T/v3.chbc"; printf 'abc' >>"$T/v3.chbc"
hdr '\010\000\000\000' >"$T/v4.chbc"; printf '\002\077\000\000\000\000\000\000' >>"$T/v4.chbc"
# v5 (a JTAB table past the code) and v6 (a bad fourth register in MEMCMP) are built from the current opcode numbers
sh tests/mkbad.sh "$T" || exit 1
printf '\103\110\102\103\004\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\000\000\000\000\076\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\002\000\000\000\006\000\000\000\000\000\000\000\000\000\000\000\020\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\010\000\000\000\000\000\000\000\002\000\000\000\146\056\143\000\155\000' >"$T/d0.chbc"
printf '\103\110\102\103\004\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\000\000\000\000\061\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\006\000\000\000\000\000\000\000\000\000\000\000\020\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\146\056\143\000\155' >"$T/d1.chbc"
printf '\103\110\102\103\004\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\000\000\000\000\061\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\005\000\000\000\000\000\000\000\000\000\000\000\020\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\146\056\143\000\155' >"$T/d2.chbc"
printf '\103\110\102\103\004\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\000\000\000\000\026\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\143\000\000\000\141\000' >"$T/d3.chbc"
printf '\103\110\102\103\004\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\000\000\000\000\044\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\030\000\000\000\002\000\000\000\146\000\155\000' >"$T/d4.chbc"
printf '\103\110\102\103\004\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\000\000\000\000\044\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\004\000\000\000\010\000\000\000\002\000\000\000\146\000\155\000' >"$T/d5.chbc"
printf '\103\110\102\103\004\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\000\000\000\000\060\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\002\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\010\000\000\000\002\000\000\000\000\000\000\000\010\000\000\000\002\000\000\000\146\000\155\000' >"$T/d6.chbc"
printf '\103\110\102\103\004\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\000\000\000\000\060\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\002\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\010\000\000\000\010\000\000\000\002\000\000\000\000\000\000\000\010\000\000\000\002\000\000\000\146\000\155\000' >"$T/d7.chbc"
printf '\103\110\102\103\004\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\000\000\000\000\044\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\010\000\000\000\062\000\000\000\146\000\155\000' >"$T/d8.chbc"
printf '\103\110\102\103\004\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\000\000\000\000\056\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\002\000\000\000\002\000\000\000\000\000\000\000\010\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\146\000' >"$T/d9.chbc"
printf '\103\110\102\103\004\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\000\000\000\000\056\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\002\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\146\000' >"$T/d10.chbc"
printf '\103\110\102\103\004\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\000\000\000\000\042\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\001\000\000\000\002\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\001\000\000\000\146\000' >"$T/d11.chbc"
printf '\103\110\102\103\004\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\000\000\000\000\042\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\001\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\001\000\000\000\146\000' >"$T/d12.chbc"
printf '\103\110\102\103\004\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\000\000\000\000\044\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\146\000\155\000' >"$T/d13.chbc"
printf '\103\110\102\103\004\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\000\000\000\000\026\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\377\377\377\377\002\000\000\000\000\000\000\000\146\000' >"$T/d14.chbc"
printf '\103\110\102\103\004\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\000\000\000\000\026\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\377\377\377\377\000\000\000\000\146\000' >"$T/d15.chbc"
if $B/chvm "$T/d0.chbc" 2>"$T/err"; then ok; else bad "good debug section rejected: $(cat "$T/err")"; fi
# file, expected error substring
while read -r f want; do
    if $B/chvm "$T/$f.chbc" 2>"$T/err"; then
        bad "bad file $f accepted"
    elif grep -qF "$want" "$T/err"; then
        ok
    else
        bad "bad file $f wrong error: $(cat "$T/err")"
    fi
done <<'LIST'
g bad file size
v1 invalid opcode
v2 code must end
v3 not a multiple of 8
v4 register number out of range
v5 branch target out of range
v6 register number out of range
k1 branch target out of range
k2 branch target out of range
k3 branch target out of range
k4 branch target out of range
d1 bad debug information
d2 bad debug information
d3 bad debug information
d4 bad debug information
d5 bad debug information
d6 bad debug information
d7 bad debug information
d8 bad debug information
d9 bad debug information
d10 bad debug information
d11 bad debug information
d12 bad debug information
d13 bad debug information
d14 bad debug information
d15 bad debug information
LIST

echo "passed $pass, failed $fail"
[ $fail -eq 0 ]

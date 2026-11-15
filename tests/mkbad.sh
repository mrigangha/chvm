#!/bin/sh
# Writes the hand-built bad images that tests/run.sh checks, using the opcode numbers of the build in
# build/. Taking the numbers from the assembler means adding an opcode cannot silently invalidate them.
# Usage: sh tests/mkbad.sh <directory to write into>
B=build
D=$1
op() {  # the opcode byte the assembler gives to a one-line program
    printf 'x: %s\nHALT\n' "$1" >"$D/_o.asm"
    $B/chasm -s "$D/_o.asm" "$D/_o.chbc" || exit 1
    od -An -tu1 -j32 -N1 "$D/_o.chbc" | tr -d ' '
}
BFLTK=$(op 'BFLTK r0, 5, x')
KDATA=$(printf 'x: BFLTK r0, 5, x\nHALT\n' >"$D/_o.asm"; $B/chasm -s "$D/_o.asm" "$D/_o.chbc"; od -An -tu1 -j40 -N1 "$D/_o.chbc" | tr -d ' ')
JMP=$(op 'JMP x')
JTAB=$(op 'JTAB r0, 2, x')
MEMCMP=$(op 'MEMCMP r0, r0, r0, r0')
HALT=0
# one instruction: opcode a b c imm32 (imm as four little-endian bytes)
insn() { printf '\\%03o\\%03o\\%03o\\%03o\\%03o\\%03o\\%03o\\%03o' "$1" "$2" "$3" "$4" "$(( $5 & 255 ))" "$(( ($5 >> 8) & 255 ))" "$(( ($5 >> 16) & 255 ))" "$(( ($5 >> 24) & 255 ))"; }
hdr() {  # a header for a code section of the given size
    printf 'CHBC\004\000\000\000\000\000\000\000'
    printf "\\$(printf %03o "$1")\\000\\000\\000"
    printf '\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000'
}
mk() {  # name, then the instructions as insn calls already expanded into one printf format string
    name=$1; size=$2; body=$3
    hdr "$size" >"$D/$name.chbc"
    # shellcheck disable=SC2059
    printf "$body" >>"$D/$name.chbc"
}
mk v5 16 "$(insn "$JTAB" 0 2 0 8)$(insn $HALT 0 0 0 0)"
mk v6 16 "$(insn "$MEMCMP" 0 0 0 32)$(insn $HALT 0 0 0 0)"
mk k1 24 "$(insn "$BFLTK" 0 0 0 16)$(insn $HALT 0 0 0 0)$(insn $HALT 0 0 0 0)"
mk k2 16 "$(insn $HALT 0 0 0 0)$(insn "$BFLTK" 0 0 0 0)"
mk k3 32 "$(insn "$JMP" 0 0 0 16)$(insn "$BFLTK" 0 0 0 32)$(insn "$KDATA" 0 0 0 5)$(insn $HALT 0 0 0 0)"
mk k4 24 "$(insn "$BFLTK" 0 0 0 8)$(insn "$KDATA" 0 0 0 5)$(insn $HALT 0 0 0 0)"
rm -f "$D/_o.asm" "$D/_o.chbc"

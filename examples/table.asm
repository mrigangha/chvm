; function-pointer table, bss buffer and .equ
.equ N, 3
.entry main
.data
table:  .word sq, cube, neg
.bss
out:    .zero 24            ; N results
.code
sq:   MUL  r0, r1, r1
      RET
cube: MUL  r0, r1, r1
      MUL  r0, r0, r1
      RET
neg:  NEG  r0, r1
      RET
main:
    LI   r5, 0              ; i
fill:
    LI   r6, table
    SHLI r7, r5, 3
    ADD  r6, r6, r7
    LD64 r6, [r6]
    LI   r1, 5
    CALLR r6
    LI   r6, out
    ADD  r6, r6, r7
    ST64 [r6], r0
    ADDI r5, r5, 1
    LI   r8, N
    BLT  r5, r8, fill
    LI   r5, 0
show:
    SHLI r7, r5, 3
    LD64 r0, [r7+out]
    PRINT r0
    ADDI r5, r5, 1
    BLT  r5, r8, show
    HALT

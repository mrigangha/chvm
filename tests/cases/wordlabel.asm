; function-pointer table and pointer globals built with .word label
.entry main
.data
table:  .word add1, add2, add3
ptr:    .word msg+2
msg:    .asciz "xxHi\n"
.code
add1: ADDI r0, r1, 1
      RET
add2: ADDI r0, r1, 2
      RET
add3: ADDI r0, r1, 3
      RET
main:
    LI r5, 0
call:
    LI r6, table
    SHLI r7, r5, 3
    ADD r6, r6, r7
    LD64 r6, [r6]
    LI r1, 10
    CALLR r6
    PRINT r0
    ADDI r5, r5, 1
    LI r7, 3
    BLT r5, r7, call
    LI r6, ptr
    LD64 r1, [r6]
loop:
    LD8 r2, [r1]
    JZ r2, done
    PRINTC r2
    ADDI r1, r1, 1
    JMP loop
done:
    HALT

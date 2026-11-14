; switch (r1) with cases 0..3 through a jump table, anything else falls through to default
.entry main
main:
    LI r6, -1             ; i, runs -1 .. 5
loop:
    ADDI r6, r6, 1
    BGEI r6, 6, done
    MOV r1, r6
    JTAB r1, 4, table
    LI r0, 99             ; default
    JMP out
table:
    JMP case0
    JMP case1
    JMP case2
    JMP case3
case0: LI r0, 100
       JMP out
case1: LI r0, 101
       JMP out
case2: LI r0, 102
       JMP out
case3: LI r0, 103
out:
    PRINT r0
    JMP loop
done:
    LI r1, -1             ; negative index is a huge unsigned number: default
    JTAB r1, 4, table
    LI r0, 98
    PRINT r0
    LI r1, 0
    JTAB r1, 0, table     ; count 0 never jumps
    LI r0, 97
    PRINT r0
    HALT

; sum 1..n
.entry main
main:
    LI   r1, 1          ; i
    LI   r2, 0          ; sum
    LI   r3, 1000000    ; n
loop:
    BGT  r1, r3, end
    ADD  r2, r2, r1
    ADDI r1, r1, 1
    JMP  loop
end:
    PRINT r2
    HALT

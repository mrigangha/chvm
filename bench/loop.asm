.entry main
main:
    LI   r1, 1
    LI   r2, 0
    LI   r3, 100000000
loop:
    BGT  r1, r3, end
    ADD  r2, r2, r1
    ADDI r1, r1, 1
    JMP  loop
end:
    PRINT r2
    HALT

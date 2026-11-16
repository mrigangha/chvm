; 100000 nested TRYs fit. The VM keeps the records itself, so they do not use guest stack.
; then a throw unwinds all of them one at a time
.entry main
.data
s_msg: .word 1
       .byte 120, 0, 0, 0, 0, 0, 0, 0
.code
main:
    LI r9, 0
    LI r11, 100000
open:
    TRY caught
    ADDI r9, r9, 1
    BLT r9, r11, open
    PRINT r9               ; 100000
    LI r2, s_msg
    THROW r2
    HALT
caught:
    ; each catch lands here with one fewer record. Rethrow until none are left
    ADDI r10, r10, 1
    BEQ r10, r11, last
    THROW r0
last:
    PRINT r10              ; 100000: every record was used exactly once
    HALT

; all 32 registers hold their own values, and the high ones work in every instruction format
.entry main
main:
    LI r16, 160
    LI r17, 170
    LI r30, 300
    LI r31, 310
    LI r20, 20
    ADD r21, r16, r17          ; 330
    PRINT r21
    ADDI r22, r30, 5           ; 305
    PRINT r22
    MUL r23, r20, r31          ; 6200
    PRINT r23
    MOV r24, r31
    PRINT r24                  ; 310
    ST64 [sp-8], r30
    LD64 r25, [sp-8]
    PRINT r25                  ; 300
    LIF r26, 2.5
    LIF r27, 4.0
    FMUL r28, r26, r27
    PRINTF r28                 ; 10
    BFLT r26, r27, less
    PRINT r20
less:
    SEL r29, r20, r16, r17     ; r20 is nonzero, so r16: 160
    PRINT r29
    PUSH r31
    POP r19
    PRINT r19                  ; 310
    ; the first sixteen registers are not disturbed by writes to the high ones
    LI r5, 55
    LI r21, 77
    PRINT r5
    LI r0, 1
    ADD r0, r0, r16            ; 161
    PRINT r0
    ; MEMCMP and SEL carry a fourth register in the immediate: use a high one
    LI r18, 4
    LI r17, 8200
    LI r16, 8200
    MEMCMP r30, r16, r17, r18
    PRINT r30                  ; 0
    HALT

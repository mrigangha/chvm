; Exercises the calling convention in docs/ABI.md:
;   sum7     7 arguments (2 on the stack), standard frame, callee-saved r9
;   vsum     variadic: vsum(n, ...) adds n extra arguments
;   makepair large struct return through a hidden first argument
.entry main


.code
    TRAP                        ; offset 0 must be TRAP

; sum7(a1..a7) = a1 + ... + a7
sum7:
    PUSH fp
    MOV  fp, sp
    ADDI sp, sp, -8
    ST64 [fp-8], r9             ; save callee-saved r9
    ADD  r9, r1, r2
    ADD  r9, r9, r3
    ADD  r9, r9, r4
    ADD  r9, r9, r5
    LD64 r0, [fp+16]            ; argument 6
    ADD  r9, r9, r0
    LD64 r0, [fp+24]            ; argument 7
    ADD  r0, r9, r0
    LD64 r9, [fp-8]             ; restore r9
    MOV  sp, fp
    POP  fp
    RET

; vsum(n, ...): sum of the n arguments after the first
vsum:
    PUSH fp
    MOV  fp, sp
    ADDI sp, sp, -40            ; save area for r1..r5 at [fp-40 .. fp-8]
    ST64 [fp-40], r1
    ST64 [fp-32], r2
    ST64 [fp-24], r3
    ST64 [fp-16], r4
    ST64 [fp-8],  r5
    LD64 r6, [fp-40]            ; n
    ADDI r7, fp, -32            ; va_list: first unnamed slot (1 named argument skips 8 bytes)
    ADDI r8, fp, 0              ; end of the save area (fp-0)
    LI   r0, 0
vloop:
    JZ   r6, vdone
    BLT  r7, r8, inreg
    ADDI r7, fp, 16             ; registers used up: continue with stack arguments
    ADDI r8, r7, 0x7fffffff     ; never switch again
inreg:
    LD64 r5, [r7]
    ADD  r0, r0, r5
    ADDI r7, r7, 8
    ADDI r6, r6, -1
    JMP  vloop
vdone:
    MOV  sp, fp
    POP  fp
    RET

; makepair(out, a, b): writes a 24-byte struct {a, b, a+b} to out, returns out
makepair:
    ST64 [r1],    r2
    ST64 [r1+8],  r3
    ADD  r4, r2, r3
    ST64 [r1+16], r4
    MOV  r0, r1
    RET

main:
    ; keep a value in r9 across calls
    LI   r9, 1000

    ; sum7(1,2,3,4,5,6,7) = 28
    ADDI sp, sp, -16
    LI   r6, 6
    ST64 [sp+0], r6
    LI   r6, 7
    ST64 [sp+8], r6
    LI   r1, 1
    LI   r2, 2
    LI   r3, 3
    LI   r4, 4
    LI   r5, 5
    CALL sum7
    ADDI sp, sp, 16
    PRINT r0
    PRINT r9                    ; still 1000

    ; vsum(3, 10, 20, 30) = 60: all variadic arguments in registers
    LI   r1, 3
    LI   r2, 10
    LI   r3, 20
    LI   r4, 30
    CALL vsum
    PRINT r0

    ; vsum(7, 1,2,3,4,5,6,7) = 28: 4 in registers, 3 on the stack
    ADDI sp, sp, -24
    LI   r6, 5
    ST64 [sp+0], r6
    LI   r6, 6
    ST64 [sp+8], r6
    LI   r6, 7
    ST64 [sp+16], r6
    LI   r1, 7
    LI   r2, 1
    LI   r3, 2
    LI   r4, 3
    LI   r5, 4
    CALL vsum
    ADDI sp, sp, 24
    PRINT r0

    ; makepair: caller reserves 24 bytes, passes the pointer in r1
    ADDI sp, sp, -24
    MOV  r1, sp
    LI   r2, 30
    LI   r3, 12
    CALL makepair
    LD64 r4, [r0]
    LD64 r5, [r0+8]
    LD64 r6, [r0+16]
    ADDI sp, sp, 24
    PRINT r4
    PRINT r5
    PRINT r6

    ; null function pointer
    LI   r1, 0
    CALLR r1
    HALT

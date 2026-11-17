; A process cannot see what an earlier process left behind, even when the machine reuses the same block of
; memory for it. Child A writes everywhere a process can: bss, the heap it grew, the free space above the heap,
; and just below the stack. Child B (same size, so it takes the same block) scans all of that and counts every
; word that is not zero. It must count 0, however many times the block is reused.
.entry main
.bss
buf: .zero 64
mark: .zero 64
.code
main:
    LI r12, 0
round:
    ; A writes, B scans
    LI r1, writer
    LI r2, buf
    LI r3, 0
    LI r4, 1048576
    LI r5, 5               ; SPAWN_FRESH + SPAWN_MONITOR
    SYSCALL SYS_PSPAWN
    BLTI r0, 1, bad
    LI r1, TAG_DOWN
    LI r2, 2000
    SYSCALL SYS_MSGWAIT
    LI r1, buf
    LI r2, 64
    SYSCALL SYS_MSGTAKE
    LI r1, scanner
    LI r2, buf
    LI r3, 0
    LI r4, 1048576
    LI r5, 5
    SYSCALL SYS_PSPAWN
    BLTI r0, 1, bad
    LI r1, 5
    LI r2, 2000
    SYSCALL SYS_MSGWAIT
    BLTI r0, 0, bad
    LI r1, buf
    LI r2, 64
    SYSCALL SYS_MSGTAKE
    LI r4, buf
    LD64 r5, [r4]
    PRINT r5               ; 0 each round: nothing left over
    LI r1, TAG_DOWN
    LI r2, 2000
    SYSCALL SYS_MSGWAIT
    LI r1, buf
    LI r2, 64
    SYSCALL SYS_MSGTAKE
    ADDI r12, r12, 1
    BLTI r12, 4, round
    ; a writer that grows its heap past what the pool keeps (more than 512 KB): its block is returned to the system
    LI r1, bigwriter
    LI r2, buf
    LI r3, 0
    LI r4, 1048576
    LI r5, 5
    SYSCALL SYS_PSPAWN
    LI r1, TAG_DOWN
    LI r2, 2000
    SYSCALL SYS_MSGWAIT
    LI r1, buf
    LI r2, 64
    SYSCALL SYS_MSGTAKE
    LI r1, scanner
    LI r2, buf
    LI r3, 0
    LI r4, 1048576
    LI r5, 5
    SYSCALL SYS_PSPAWN
    LI r1, 5
    LI r2, 2000
    SYSCALL SYS_MSGWAIT
    LI r1, buf
    LI r2, 64
    SYSCALL SYS_MSGTAKE
    LI r4, buf
    LD64 r5, [r4]
    PRINT r5               ; 0
    LI r1, TAG_DOWN
    LI r2, 2000
    SYSCALL SYS_MSGWAIT
    LI r1, buf
    LI r2, 64
    SYSCALL SYS_MSGTAKE
    PRINT r12              ; 4 rounds done
    ; a writer that touches more than 256 pages (1 MiB of a 2 MiB block): the pool returns it to the system instead
    LI r1, sprawler
    LI r2, buf
    LI r3, 0
    LI r4, 2097152
    LI r5, 5
    SYSCALL SYS_PSPAWN
    LI r1, TAG_DOWN
    LI r2, 2000
    SYSCALL SYS_MSGWAIT
    LI r1, buf
    LI r2, 64
    SYSCALL SYS_MSGTAKE
    LI r1, scanner2
    LI r2, buf
    LI r3, 0
    LI r4, 2097152
    LI r5, 5
    SYSCALL SYS_PSPAWN
    LI r1, 5
    LI r2, 2000
    SYSCALL SYS_MSGWAIT
    LI r1, buf
    LI r2, 64
    SYSCALL SYS_MSGTAKE
    LI r4, buf
    LD64 r5, [r4]
    PRINT r5               ; 0
    HALT
bad:
    PRINT r0
    HALT

; writes a nonzero word in every place a process can reach
writer:
    MOV r9, r1             ; r1 = the argument string, at the start of the free space
    LI r8, 0x5a5a5a5a
    LI r6, mark
    ST64 [r6], r8          ; bss
    ST64 [r6+56], r8
    ADDI r7, r9, 16
    ST64 [r7], r8          ; free space just above the heap
    ADDI r7, r9, 4096
    ST64 [r7], r8
    ADDI r7, r9, 65536
    ST64 [r7], r8
    ADDI r7, r9, 262144
    ST64 [r7], r8          ; the middle
    ADDI r7, sp, -64
    ST64 [r7], r8          ; just below the stack
    ADDI r7, sp, -65536
    ST64 [r7], r8
    ADDI r7, sp, -200000
    ST64 [r7], r8
    ALLOCI r2, 40000       ; the heap grows, and it is written
    ST64 [r2], r8
    ST64 [r2+39992], r8
    PUSH r8                ; the stack is written
    PUSH r8
    POP r8
    POP r8
    RET

; the same, and the heap grows beyond what the pool keeps
bigwriter:
    LI r8, 0x7b7b7b7b
    LI r6, mark
    ST64 [r6], r8
    LI r2, 0
grow:
    ALLOCI r3, 60000
    ST64 [r3], r8
    ST64 [r3+59992], r8
    ADDI r2, r2, 1
    BLTI r2, 12, grow
    RET

; counts the words in all the free space that are not zero, and sends the count to the first process
scanner:
    LI r10, 0              ; the count
    ADDI r11, r1, 8        ; from the end of the argument
    ADDI r13, sp, -8       ; up to the word below the return marker the machine put at the top
scan:
    BGE r11, r13, scanned
    LD64 r5, [r11]
    BEQI r5, 0, zero
    ADDI r10, r10, 1
zero:
    ADDI r11, r11, 8
    JMP scan
scanned:
    LI r6, mark            ; the bss must be zero too
    LD64 r5, [r6]
    BEQI r5, 0, bss_ok
    ADDI r10, r10, 1
bss_ok:
    LD64 r5, [r6+56]
    BEQI r5, 0, bss_ok2
    ADDI r10, r10, 1
bss_ok2:
    LI r6, buf
    ST64 [r6], r10
    LI r1, 1
    LI r2, 5
    LI r3, buf
    LI r4, 8
    SYSCALL SYS_SEND
    RET

; writes one word in each of 300 pages of the free space
sprawler:
    ADDI r7, r1, 8192
    LI r8, 0x33333333
    LI r2, 0
sprawl:
    ST64 [r7], r8
    ADDI r7, r7, 4096
    ADDI r2, r2, 1
    BLTI r2, 300, sprawl
    RET

; counts the nonzero words, one probe per page and the words just after
scanner2:
    LI r10, 0
    ADDI r11, r1, 8192
    LI r2, 0
probe:
    LD64 r5, [r11]
    BEQI r5, 0, pz
    ADDI r10, r10, 1
pz:
    ADDI r11, r11, 4096
    ADDI r2, r2, 1
    BLTI r2, 300, probe
    LI r6, buf
    ST64 [r6], r10
    LI r1, 1
    LI r2, 5
    LI r3, buf
    LI r4, 8
    SYSCALL SYS_SEND
    RET

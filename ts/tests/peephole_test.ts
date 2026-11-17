import { peephole } from "../src/peephole.ts"

let bad = 0
function t(input: string[], want: string[]): void {
  // labels and directives start in column 0, instructions are indented, as the generator writes them
  const fmt = (s: string): string => (s.slice(-1) === ":" || s.slice(0, 1) === "." ? s : "    " + s)
  const got = peephole(input.map(fmt))
  const w = want.map(fmt)
  if (got.join("\n") !== w.join("\n")) {
    console.log("FAIL\n  in:   " + input.join(" | ") + "\n  want: " + want.join(" | ") + "\n  got:  " + got.map((s) => s.trim()).join(" | "))
    bad++
  }
}

// a chain of two moves reads the source directly when the middle register is dead afterwards
t(["MOV r1, r0", "MOV r13, r1", "FSUBI r2, r9, 2", "MOV r1, r2"], ["MOV r13, r0", "FSUBI r2, r9, 2", "MOV r1, r2"])
// end of the listing: not proven dead, so nothing changes
t(["MOV r1, r0", "MOV r13, r1", "FSUBI r2, r9, 2"], ["MOV r1, r0", "MOV r13, r1", "FSUBI r2, r9, 2"])
t(["MOV r1, r0", "MOV r13, r1", "FADD r2, r1, r9"], ["MOV r1, r0", "MOV r13, r1", "FADD r2, r1, r9"])
t(["MOV r1, r0", "MOV r13, r1", "CALL f"], ["MOV r1, r0", "MOV r13, r1", "CALL f"])
t(["MOV r1, r0", "MOV r1, r1"], ["MOV r1, r0"])
// a jump to the next line is removed, also across directives and other labels
t(["JMP L1", "L1:", "MOV r1, r2"], ["L1:", "MOV r1, r2"])
t(["JMP L1", ".line 4", "L1:", "MOV r1, r2"], [".line 4", "L1:", "MOV r1, r2"])
t(["JMP L2", "L1:", "L2:", "MOV r1, r2"], ["L1:", "L2:", "MOV r1, r2"])
t(["JMP L2", "L1:", "MOV r1, r2", "L2:"], ["JMP L2", "L1:", "MOV r1, r2", "L2:"])
t(["JMP L3", "MOV r1, r2", "L3:"], ["JMP L3", "MOV r1, r2", "L3:"])
// a move onto itself is removed
t(["MOV r1, r1"], [])
t(["MOV r1, r1", "FADD r1, r1, r2"], ["FADD r1, r1, r2"])
// a swap-back is removed
t(["MOV r2, r1", "MOV r1, r2"], ["MOV r2, r1"])
// the first of two writes to the same register is dead
t(["MOV r1, r2", "MOV r1, r3"], ["MOV r1, r3"])
// but not when the second one reads the first's result
t(["MOV r1, r2", "MOV r1, r1"], ["MOV r1, r2"])
// compute into a temporary then move: write the target directly, when the temporary is dead
t(["FADD r1, r2, r3", "MOV r4, r1", "FMUL r1, r5, r6"], ["FADD r4, r2, r3", "FMUL r1, r5, r6"])
t(["LD64 r1, [r9+8]", "MOV r2, r1", "LD64 r1, [r9+16]"], ["LD64 r2, [r9+8]", "LD64 r1, [r9+16]"])
// the temporary is still read afterwards: keep both
t(["FADD r1, r2, r3", "MOV r4, r1", "FMUL r5, r1, r6"], ["FADD r1, r2, r3", "MOV r4, r1", "FMUL r5, r1, r6"])
// a label right after: the temporary might be used there, keep both
t(["FADD r1, r2, r3", "MOV r4, r1", "L5:", "FMUL r5, r1, r6"], ["FADD r1, r2, r3", "MOV r4, r1", "L5:", "FMUL r5, r1, r6"])
// a call right after: it can read r1 as an argument, keep both
t(["FADD r1, r2, r3", "MOV r4, r1", "CALL f"], ["FADD r1, r2, r3", "MOV r4, r1", "CALL f"])
// a branch right after: keep both
t(["FADD r1, r2, r3", "MOV r4, r1", "JMP L1"], ["FADD r1, r2, r3", "MOV r4, r1", "JMP L1"])
t(["FADD r1, r2, r3", "MOV r4, r1", "BFLT r4, r5, L1"], ["FADD r1, r2, r3", "MOV r4, r1", "BFLT r4, r5, L1"])
// at a return only r0 and the saved registers are live, so a scratch register is dead there
t(["FADD r1, r2, r3", "MOV r4, r1", "RET"], ["FADD r4, r2, r3", "RET"])
t(["FADD r1, r2, r3", "MOV r0, r1", "RET"], ["FADD r0, r2, r3", "RET"])
t(["FADD r1, r2, r3", "MOV r0, r1", "JMP f_fib_ret"], ["FADD r0, r2, r3", "JMP f_fib_ret"])
t(["MOV r1, r9", "MOV r0, r1", "JMP f_fib_ret"], ["MOV r0, r9", "JMP f_fib_ret"])
// but a saved register is live at the return, and so is a jump to some other label
t(["FADD r9, r2, r3", "MOV r10, r9", "RET"], ["FADD r9, r2, r3", "MOV r10, r9", "RET"])
t(["FADD r1, r2, r3", "MOV r4, r1", "JMP L7_end"], ["FADD r1, r2, r3", "MOV r4, r1", "JMP L7_end"])
// reading the target of the move inside the instruction: ALU instructions read before they write
t(["FADD r1, r4, r3", "MOV r4, r1", "FMUL r1, r5, r6"], ["FADD r4, r4, r3", "FMUL r1, r5, r6"])
// an instruction whose result is read through memory syntax is still seen as a read
t(["MOV r4, r1", "LD64 r2, [r4+8]"], ["MOV r4, r1", "LD64 r2, [r4+8]"])
// r1 is rewritten before it is read again, so the load can go straight into r4 (the store does not read r1)
t(["LD64 r1, [r9]", "MOV r4, r1", "ST64 [r4+8], r2", "LD64 r1, [r9+8]"], ["LD64 r4, [r9]", "ST64 [r4+8], r2", "LD64 r1, [r9+8]"])
// but if the store did read r1, both stay
t(["LD64 r1, [r9]", "MOV r4, r1", "ST64 [r4+8], r1", "LD64 r1, [r9+8]"], ["LD64 r1, [r9]", "MOV r4, r1", "ST64 [r4+8], r1", "LD64 r1, [r9+8]"])
// directives between instructions are skipped
t([".line 3", "MOV r1, r1"], [".line 3"])
// LDAX writes its destination before it finishes reading its inputs, so it is not rewritten onto a source
t(["LDAX r1, r2, r3", "MOV r2, r1", "FADD r1, r5, r6"], ["LDAX r1, r2, r3", "MOV r2, r1", "FADD r1, r5, r6"])

// ---- fusing the ends of a function ----
t(["PUSH r9", "PUSH r10"], ["PUSH2 r9, r10"])
t(["POP r10", "POP r9"], ["POP2 r10, r9"])
t(["POP r9", "RET"], ["POPRET r9"])
t(["POP r10", "POP r9", "RET"], ["POP2RET r10, r9"])
t(["MOV r0, r5", "RET"], ["RETR r5"])
// three pushes: the first two fuse and the third stays
t(["PUSH r9", "PUSH r10", "PUSH r11"], ["PUSH2 r9, r10", "PUSH r11"])
// four pushes make two pairs
t(["PUSH r9", "PUSH r10", "PUSH r11", "PUSH r12"], ["PUSH2 r9, r10", "PUSH2 r11, r12"])
// a label between the two: something can jump to the second alone, so they stay apart
t(["PUSH r9", "L5:", "PUSH r10"], ["PUSH r9", "L5:", "PUSH r10"])
t(["POP r9", "L5:", "RET"], ["POP r9", "L5:", "RET"])
t(["MOV r0, r5", "f_ret:", "RET"], ["MOV r0, r5", "f_ret:", "RET"])
// a directive that ends a function between them
t(["POP r9", ".endfunc", "RET"], ["POP r9", ".endfunc", "RET"])
// a line number is not a boundary: it moves in front of the fused instruction
t(["PUSH r9", ".line 4", "PUSH r10"], [".line 4", "PUSH2 r9, r10"])
// only a move into r0 fuses with RET
t(["MOV r1, r5", "RET"], ["MOV r1, r5", "RET"])
// the first move is dead (r0 is written again), so it goes, and the second fuses
t(["MOV r0, r5", "MOV r0, r6", "RET"], ["RETR r6"])
// a push followed by something else stays
t(["PUSH r9", "MOV r1, r2"], ["PUSH r9", "MOV r1, r2"])
t(["POP r9", "MOV r1, r2"], ["POP r9", "MOV r1, r2"])
// the whole of a typical function ending
t(["FADD r0, r31, r1", "f_fib_ret:", "POP r31", "POP r9", "RET"], ["FADD r0, r31, r1", "f_fib_ret:", "POP2RET r31, r9"])

console.log(bad === 0 ? "peephole: all passed" : "peephole: " + bad + " failed")

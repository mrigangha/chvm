import { NIL } from "./ast.ts"
import type { Node, Type } from "./ast.ts"
import { fail } from "./diag.ts"
import type { Program, FuncInfo, Sym } from "./checker.ts"
import { repeatStr } from "./util.ts"
import { peephole } from "./peephole.ts"

// Output is chasm assembly text.
//
// Registers
//   r0       result of a call, scratch
//   r1..r5   arguments, and the first expression temporaries
//   r1..r8   expression temporaries: depth d uses r(1+d), and a deeper expression spills
//   r9..r13  locals that live across calls, chosen by how often the checker saw them used
//   r14 fp   frame pointer, only set up when the function has locals in memory or makes calls
//   r15 sp
// A function keeps its parameters in r1..r5 on entry and moves them to their home. Callers save
// r9..r13 themselves: a function that uses a register saves it in its prologue and restores it
// before returning, so the callee-saved set is the same for every function.
//
// Frame: [fp+8] return address, [fp+0] saved fp, then saved registers, then memory locals.

interface Home {
  reg: number         // register number 9..13, or -1 for memory
  off: number         // frame offset (negative) when in memory
}

interface Gen {
  out: string[]
  label: number
  loops: string[]       // innermost last: "<continue label> <break label>"
  fname: string
  prog: Program
  file: string
  line: number
  homes: Home[]         // by local slot
  usedRegs: number[]    // callee-saved registers this function uses
  depth: number         // expression temporary depth: the next free temp is r(1+depth)
  hasFrame: boolean
  isStart: boolean
  liveFloor: number     // temporaries below this are known to hold nothing live, so calls need not save them
  parked: number[]      // per saved register: 1 while a temporary value is parked in it
  usedMask: boolean[]   // per saved register: a variable lives there
  extraUsed: boolean[]  // per saved register: parked in at least once, so it must be saved in the prologue
  extraRegs: number[]
}

const FIRST_TEMP = 1
const MAX_TEMP = 7
const TOP_SCRATCH = 8
const FIRST_SAVED = 9
const LAST_SAVED = 13

function emit(g: Gen, s: string): void {
  g.out.push("    " + s)
}

function lab(g: Gen, prefix: string): string {
  g.label++
  return "L" + g.label + "_" + prefix
}

function place(g: Gen, name: string): void {
  g.out.push(name + ":")
}

function setLine(g: Gen, n: Node): void {
  if (n.line !== g.line) {
    g.out.push(".line " + n.line)
    g.line = n.line
  }
}

function numLit(v: number): string {
  if (v !== v) return "nan"
  if (v > 1.7976931348623157e308) return "inf"
  if (v < -1.7976931348623157e308) return "-inf"
  return "" + v
}

// A number that fits a 32-bit immediate and is a whole number (so FMOVI, FADDI and friends are exact)
function isSmallInt(v: number): boolean {
  return v === Math.floor(v) && v >= -2147483648 && v <= 2147483647 && !(v === 0 && 1 / v < 0)
}

function isSmall16(v: number): boolean {
  return v === Math.floor(v) && v >= -32768 && v <= 32767 && !(v === 0 && 1 / v < 0)
}

function rn(r: number): string {
  return "r" + r
}

function temp(g: Gen, d: number): number {
  return FIRST_TEMP + d
}

// ---- locals ----

function homeOf(g: Gen, slot: number): Home {
  return g.homes[slot]
}

function memOff(h: Home): string {
  return "[fp" + h.off + "]"
}

// Load the local's value into register `dst`. A register local is read in place by readReg instead.
function loadLocal(g: Gen, slot: number, dst: number): void {
  const h = homeOf(g, slot)
  if (h.reg >= 0) {
    if (h.reg !== dst) emit(g, "MOV " + rn(dst) + ", " + rn(h.reg))
  } else {
    emit(g, "LD64 " + rn(dst) + ", " + memOff(h))
  }
}

function storeLocal(g: Gen, slot: number, src: number): void {
  const h = homeOf(g, slot)
  if (h.reg >= 0) {
    if (h.reg !== src) emit(g, "MOV " + rn(h.reg) + ", " + rn(src))
  } else {
    emit(g, "ST64 " + memOff(h) + ", " + rn(src))
  }
}

// The register that already holds this expression, or -1 if it has to be computed.
function inPlace(g: Gen, n: Node): number {
  if (n.kind === "id" && n.slot >= 0) {
    const h = homeOf(g, n.slot)
    if (h.reg >= 0) return h.reg
  }
  return -1
}

// ---- expressions ----
// genTo(g, n, dst) evaluates n into register dst. Temporaries above dst are free to use.

function spillIfDeep(g: Gen, dst: number): void {
  if (dst > MAX_TEMP) fail(g.file, g.line, 1, "internal: temporary register out of range")
}

// Registers dst and dst+1 hold the operands of a binary operation. When dst+1 would pass the last
// temporary, the left operand waits on the machine stack and the right one is computed in dst.
function lowTemps(dst: number): boolean {
  return dst + 1 <= MAX_TEMP
}

function genTo(g: Gen, n: Node, dst: number): void {
  spillIfDeep(g, dst)
  const k = n.kind
  if (k === "num") {
    if (isSmallInt(n.num)) emit(g, "FMOVI " + rn(dst) + ", " + n.num)
    else emit(g, "LIF " + rn(dst) + ", " + numLit(n.num))
  } else if (k === "str") {
    emit(g, "LI " + rn(dst) + ", s_" + n.slot)
  } else if (k === "true") {
    emit(g, "LI " + rn(dst) + ", 1")
  } else if (k === "false") {
    emit(g, "LI " + rn(dst) + ", 0")
  } else if (k === "id") {
    if (n.slot >= 0) loadLocal(g, n.slot, dst)
    else emit(g, "LDG " + rn(dst) + ", " + n.tag)
  } else if (k === "array") {
    genArrayLit(g, n, dst)
  } else if (k === "object") {
    genObjectLit(g, n, dst)
  } else if (k === "index") {
    genIndexLoad(g, n, dst)
  } else if (k === "member") {
    genMember(g, n, dst)
  } else if (k === "call") {
    genCall(g, n, dst)
  } else if (k === "unary") {
    genUnary(g, n, dst)
  } else if (k === "update") {
    genUpdate(g, n, dst)
  } else if (k === "binary") {
    genBinary(g, n, dst)
  } else if (k === "logical" || (k === "unary" && n.text === "!")) {
    genLogicalValue(g, n, dst)
  } else if (k === "assign") {
    genAssign(g, n, dst)
  } else if (k === "cond") {
    const no = lab(g, "no")
    const end = lab(g, "end")
    genJumpIfFalse(g, n.a, no, dst)
    genTo(g, n.b, dst)
    emit(g, "JMP " + end)
    place(g, no)
    genTo(g, n.c, dst)
    place(g, end)
  } else {
    fail(n.file, n.line, n.col, "internal: cannot generate " + k)
  }
}

// Evaluate n only for its side effects. Updates and assignments skip the move that would deliver
// their value, since nobody reads it.
function genEffect(g: Gen, n: Node): void {
  if (n.kind === "update") {
    genUpdateEffect(g, n)
    return
  }
  if (n.kind === "assign") {
    genAssignEffect(g, n)
    return
  }
  genTo(g, n, FIRST_TEMP)
}

function genUpdateEffect(g: Gen, n: Node): void {
  const t = n.a
  const op = n.text === "++" ? "FADDI" : "FSUBI"
  if (t.kind === "id") {
    const home = t.slot >= 0 ? homeOf(g, t.slot).reg : -1
    if (home >= 0) {
      emit(g, op + " " + rn(home) + ", " + rn(home) + ", 1")
      return
    }
    genTo(g, t, FIRST_TEMP)
    emit(g, op + " r2, r1, 1")
    storeVar(g, t, 2)
    return
  }
  genAddrTo(g, t, FIRST_TEMP)
  emit(g, "LD64 r2, [r1]")
  emit(g, op + " r2, r2, 1")
  emit(g, "ST64 [r1], r2")
}

// Evaluate n and leave the value in register `out`. Only the last instruction writes `out`, after every
// operand has been read, so `out` may be a variable's own register even when n reads that variable.
// All temporaries stay in r1..r8, so no other variable's register is touched.
function genInto(g: Gen, n: Node, out: number): void {
  if (out >= FIRST_SAVED) {
    if (n.kind === "num") {
      if (isSmallInt(n.num)) emit(g, "FMOVI " + rn(out) + ", " + n.num)
      else emit(g, "LIF " + rn(out) + ", " + numLit(n.num))
      return
    }
    if (n.kind === "true" || n.kind === "false") {
      emit(g, "LI " + rn(out) + ", " + (n.kind === "true" ? 1 : 0))
      return
    }
    if (n.kind === "binary" && n.tag !== "concat" && n.tag !== "str" && !hasCall(n)) {
      genBinaryOut(g, n, FIRST_TEMP, out)
      return
    }
  }
  genTo(g, n, FIRST_TEMP)
  emit(g, "MOV " + rn(out) + ", r1")
}

function genAssignEffect(g: Gen, n: Node): void {
  const target = n.a
  if (target.kind === "id" && n.tag !== "concat") {
    const home = target.slot >= 0 ? homeOf(g, target.slot).reg : -1
    if (n.text === "=") {
      if (home >= 0) {
        genInto(g, n.b, home)
      } else {
        genTo(g, n.b, FIRST_TEMP)
        storeVar(g, target, FIRST_TEMP)
      }
      return
    }
    if (home >= 0) {
      emitCompound(g, n, home, home, FIRST_TEMP)
      return
    }
    const cur = operand(g, target, FIRST_TEMP)
    emitCompound(g, n, FIRST_TEMP, cur, FIRST_TEMP + 1)
    storeVar(g, target, FIRST_TEMP)
    return
  }
  genTo(g, n, FIRST_TEMP)
}

// An operand as a register: the local's own register when it has one, else computed into `scratch`.
function operand(g: Gen, n: Node, scratch: number): number {
  const p = inPlace(g, n)
  if (p >= 0) return p
  genTo(g, n, scratch)
  return scratch
}

// Evaluate the left operand into `dst`, then the right one. If the right side has a call it would
// clobber the temporaries, so the left value is saved across it.
function hasCall(n: Node): boolean {
  if (n === NIL) return false
  if (n.kind === "call") return true
  if (n.kind === "binary" && (n.tag === "concat" || n.tag === "str")) return true
  if (n.kind === "assign" && n.tag === "concat") return true
  if (n.kind === "array" || n.kind === "object") return true
  if (hasCall(n.a) || hasCall(n.b) || hasCall(n.c) || hasCall(n.d)) return true
  let i = 0
  while (i < n.list.length) {
    if (hasCall(n.list[i])) return true
    i++
  }
  return false
}

// Saved registers that no variable uses are free to hold a value across a call. This hands one out.
function parkReg(g: Gen): number {
  let r = LAST_SAVED
  while (r >= FIRST_SAVED) {
    if (g.parked[r - FIRST_SAVED] === 0 && !g.usedMask[r - FIRST_SAVED]) {
      g.parked[r - FIRST_SAVED] = 1
      if (!g.extraUsed[r - FIRST_SAVED]) {
        g.extraUsed[r - FIRST_SAVED] = true
        g.extraRegs.push(r)
      }
      return r
    }
    r--
  }
  return -1
}

function releaseReg(g: Gen, r: number): void {
  g.parked[r - FIRST_SAVED] = 0
}

// Two operands in registers (left, right). The registers are temporaries or a local's own register.
function genPair(g: Gen, a: Node, b: Node, dst: number): number[] {
  const pa = inPlace(g, a)
  const pb = inPlace(g, b)
  let ra = pa
  let rb = pb
  if (!lowTemps(dst) && pa < 0 && pb < 0) {
    genTo(g, a, dst)
    emit(g, "PUSH " + rn(dst))
    genTo(g, b, dst)
    emit(g, "MOV " + rn(TOP_SCRATCH) + ", " + rn(dst))
    emit(g, "POP " + rn(dst))
    return [dst, TOP_SCRATCH]
  }
  if (hasCall(b) && pa < 0) {
    // The left value must survive the call in b. A call keeps r9..r13, so it waits in a saved register
    // when one is free, which costs no memory access at all.
    genTo(g, a, dst)
    const park = parkReg(g)
    if (park >= 0) {
      emit(g, "MOV " + rn(park) + ", " + rn(dst))
      const savedFloor = g.liveFloor
      g.liveFloor = dst + 1
      genTo(g, b, dst + 1)
      g.liveFloor = savedFloor
      emit(g, "MOV " + rn(dst) + ", " + rn(park))
      releaseReg(g, park)
      return [dst, dst + 1]
    }
    emit(g, "PUSH " + rn(dst))
    genTo(g, b, dst + 1)
    emit(g, "POP " + rn(dst))
    return [dst, dst + 1]
  }
  if (ra < 0) {
    genTo(g, a, dst)
    ra = dst
  }
  if (rb < 0) {
    const t = ra === dst ? dst + 1 : dst
    genTo(g, b, t)
    rb = t
  }
  return [ra, rb]
}

function genUnary(g: Gen, n: Node, dst: number): void {
  if (n.text === "!") {
    genLogicalValue(g, n, dst)
    return
  }
  const r = operand(g, n.a, dst)
  if (n.text === "-") emit(g, "FNEG " + rn(dst) + ", " + rn(r))
  else if (r !== dst) emit(g, "MOV " + rn(dst) + ", " + rn(r))
}

const FLOP: string[] = ["+", "FADD", "-", "FSUB", "*", "FMUL", "/", "FDIV", "%", "FMOD"]

function floatOp(op: string): string {
  let i = 0
  while (i < FLOP.length) {
    if (FLOP[i] === op) return FLOP[i + 1]
    i = i + 2
  }
  return ""
}

function genBinary(g: Gen, n: Node, dst: number): void {
  genBinaryOut(g, n, dst, dst)
}

// Like genBinary, but the final instruction writes register `out` and temporaries start at `dst`.
function genBinaryOut(g: Gen, n: Node, dst: number, out: number): void {
  const op = n.text
  if (n.tag === "concat") {
    genConcat(g, n.a, n.b, dst)
    return
  }
  if (n.tag === "str") {
    const rs = genPair(g, n.a, n.b, dst)
    saveTemps(g, dst)
    moveArgs(g, [rs[0], rs[1]])
    if (op === "===" || op === "==" || op === "!==" || op === "!=") {
      emit(g, "CALL __str_eq")
      restoreTemps(g, dst)
      if (op === "!==" || op === "!=") emit(g, "LNOT " + rn(dst) + ", r0")
      else emit(g, "MOV " + rn(dst) + ", r0")
    } else {
      emit(g, "CALL __str_cmp")
      restoreTemps(g, dst)
      if (op === "<") emit(g, "LTI " + rn(dst) + ", r0, 0")
      else if (op === "<=") emit(g, "LEI " + rn(dst) + ", r0, 0")
      else if (op === ">") emit(g, "GTI " + rn(dst) + ", r0, 0")
      else emit(g, "GEI " + rn(dst) + ", r0, 0")
    }
    return
  }
  const fop = floatOp(op)
  if (fop !== "") {
    // a small whole number on the right: use the immediate form. + and * give the same answer in
    // either order, so a constant on the left is moved to the right. The constant has no side effects,
    // so the other operand is still evaluated exactly once and in the same place.
    let left = n.a
    let right = n.b
    if ((op === "+" || op === "*") && left.kind === "num" && isSmallInt(left.num) && !(right.kind === "num")) {
      left = n.b
      right = n.a
    }
    if (right.kind === "num" && isSmallInt(right.num)) {
      const ra = operand(g, left, dst)
      const imm = op === "+" ? "FADDI" : op === "-" ? "FSUBI" : op === "*" ? "FMULI" : op === "/" ? "FDIVI" : "FMODI"
      emit(g, imm + " " + rn(out) + ", " + rn(ra) + ", " + right.num)
      return
    }
    const rs = genPair(g, n.a, n.b, dst)
    emit(g, fop + " " + rn(out) + ", " + rn(rs[0]) + ", " + rn(rs[1]))
    return
  }
  if (op === "<" || op === "<=" || op === ">" || op === ">=") {
    const rs = genPair(g, n.a, n.b, dst)
    if (op === "<") emit(g, "FLT " + rn(out) + ", " + rn(rs[0]) + ", " + rn(rs[1]))
    else if (op === "<=") emit(g, "FLE " + rn(out) + ", " + rn(rs[0]) + ", " + rn(rs[1]))
    else if (op === ">") emit(g, "FLT " + rn(out) + ", " + rn(rs[1]) + ", " + rn(rs[0]))
    else emit(g, "FLE " + rn(out) + ", " + rn(rs[1]) + ", " + rn(rs[0]))
    return
  }
  // equality
  const rs = genPair(g, n.a, n.b, dst)
  const neg = op === "!==" || op === "!="
  if (n.tag === "num") emit(g, (neg ? "FNE " : "FEQ ") + rn(out) + ", " + rn(rs[0]) + ", " + rn(rs[1]))
  else emit(g, (neg ? "NE " : "EQ ") + rn(out) + ", " + rn(rs[0]) + ", " + rn(rs[1]))
}

// the value in register r, of type t, becomes a string in r
function convertToString(g: Gen, t: Type, r: number): void {
  if (t.kind === "string") return
  saveTemps(g, r)
  emit(g, "MOV r1, " + rn(r))
  if (t.kind === "number") emit(g, "CALL __num_str")
  else emit(g, "CALL __bool_str")
  restoreTemps(g, r)
  emit(g, "MOV " + rn(r) + ", r0")
}

// Temporaries below `upto` hold live values and a call would clobber them. Save them around it.
function saveTemps(g: Gen, upto: number): void {
  let r = g.liveFloor
  while (r < upto) {
    emit(g, "PUSH " + rn(r))
    r++
  }
}

function restoreTemps(g: Gen, upto: number): void {
  let r = upto - 1
  while (r >= g.liveFloor) {
    emit(g, "POP " + rn(r))
    r--
  }
}

// Move up to three values into r1..r3 as if all the moves happened at once. A source may be one of
// the registers r1..r3 that another move overwrites, so a plain sequence of MOVs can lose a value.
function moveArgs(g: Gen, srcs: number[]): void {
  const n = srcs.length
  const done: boolean[] = []
  let i = 0
  while (i < n) {
    done.push(srcs[i] === i + 1)
    i++
  }
  let left = 0
  i = 0
  while (i < n) {
    if (!done[i]) left++
    i++
  }
  while (left > 0) {
    let progressed = false
    i = 0
    while (i < n) {
      if (!done[i]) {
        // the destination r(i+1) is free if no pending move still reads it
        let busy = false
        let j = 0
        while (j < n) {
          if (!done[j] && j !== i && srcs[j] === i + 1) busy = true
          j++
        }
        if (!busy) {
          emit(g, "MOV " + rn(i + 1) + ", " + rn(srcs[i]))
          done[i] = true
          left--
          progressed = true
        }
      }
      i++
    }
    if (!progressed) {
      // a cycle: break it through r0
      i = 0
      while (i < n && done[i]) i++
      emit(g, "MOV r0, " + rn(srcs[i]))
      srcs[i] = 0
    }
  }
}

// left + right as strings, result in dst. Live temporaries below dst are saved first, because
// the call arguments are built in r1 and r2.
function genConcat(g: Gen, left: Node, right: Node, dst: number): void {
  saveTemps(g, dst)
  genTo(g, left, dst)
  convertToString(g, left.ty, dst)
  emit(g, "PUSH " + rn(dst))
  genTo(g, right, dst + 1)
  convertToString(g, right.ty, dst + 1)
  emit(g, "MOV r2, " + rn(dst + 1))
  emit(g, "POP r1")
  emit(g, "CALL __str_concat")
  restoreTemps(g, dst)
  emit(g, "MOV " + rn(dst) + ", r0")
}

// Call a runtime function whose arguments are already in r1, r2. Result goes to dst.
function callRuntime(g: Gen, name: string, dst: number): void {
  saveTemps(g, dst)
  emit(g, "CALL " + name)
  restoreTemps(g, dst)
  emit(g, "MOV " + rn(dst) + ", r0")
}

// ---- boolean contexts: jump directly, without making a 0 or 1 ----

function genLogicalValue(g: Gen, n: Node, dst: number): void {
  const no = lab(g, "no")
  const end = lab(g, "end")
  genJumpIfFalse(g, n, no, dst)
  emit(g, "LI " + rn(dst) + ", 1")
  emit(g, "JMP " + end)
  place(g, no)
  emit(g, "LI " + rn(dst) + ", 0")
  place(g, end)
}

// Jump to `target` when n is false, fall through when it is true.
function genJumpIfFalse(g: Gen, n: Node, target: string, dst: number): void {
  if (n.kind === "unary" && n.text === "!") {
    genJumpIfTrue(g, n.a, target, dst)
    return
  }
  if (n.kind === "logical") {
    if (n.text === "&&") {
      genJumpIfFalse(g, n.a, target, dst)
      genJumpIfFalse(g, n.b, target, dst)
    } else {
      const yes = lab(g, "or")
      genJumpIfTrue(g, n.a, yes, dst)
      genJumpIfFalse(g, n.b, target, dst)
      place(g, yes)
    }
    return
  }
  if (n.kind === "binary" && n.tag === "") {
    if (genCompareBranch(g, n, target, dst, true)) return
  }
  if (n.kind === "binary" && n.tag === "num") {
    if (genCompareBranch(g, n, target, dst, true)) return
  }
  if (n.kind === "true") return
  if (n.kind === "false") {
    emit(g, "JMP " + target)
    return
  }
  const r = operand(g, n, dst)
  emit(g, "JZ " + rn(r) + ", " + target)
}

function genJumpIfTrue(g: Gen, n: Node, target: string, dst: number): void {
  if (n.kind === "unary" && n.text === "!") {
    genJumpIfFalse(g, n.a, target, dst)
    return
  }
  if (n.kind === "logical") {
    if (n.text === "||") {
      genJumpIfTrue(g, n.a, target, dst)
      genJumpIfTrue(g, n.b, target, dst)
    } else {
      const no = lab(g, "and")
      genJumpIfFalse(g, n.a, no, dst)
      genJumpIfTrue(g, n.b, target, dst)
      place(g, no)
    }
    return
  }
  if (n.kind === "binary" && (n.tag === "" || n.tag === "num")) {
    if (genCompareBranch(g, n, target, dst, false)) return
  }
  if (n.kind === "false") return
  if (n.kind === "true") {
    emit(g, "JMP " + target)
    return
  }
  const r = operand(g, n, dst)
  emit(g, "JNZ " + rn(r) + ", " + target)
}

// A numeric comparison as one branch. `whenFalse` jumps when the comparison is false.
// Because of NaN, "not (a < b)" is not "a >= b", so the negated branch forms are used.
function genCompareBranch(g: Gen, n: Node, target: string, dst: number, whenFalse: boolean): boolean {
  const op = n.text
  if (op !== "<" && op !== "<=" && op !== ">" && op !== ">=" && op !== "===" && op !== "==" && op !== "!==" && op !== "!=") return false
  if (n.a.ty.kind !== "number") return false
  const imm = n.b.kind === "num" && isSmall16(n.b.num)
  if (imm) {
    const ra = operand(g, n.a, dst)
    const v = n.b.num
    // jump when the comparison holds (whenFalse = false) or fails (whenFalse = true)
    let name = ""
    if (op === "<") name = whenFalse ? "BFNLTI" : "BFLTI"
    else if (op === "<=") name = whenFalse ? "BFNLEI" : "BFLEI"
    else if (op === ">") name = whenFalse ? "BFNGTI" : "BFGTI"
    else if (op === ">=") name = whenFalse ? "BFNGEI" : "BFGEI"
    else if (op === "===" || op === "==") name = whenFalse ? "BFNEI" : "BFEQI"
    else name = whenFalse ? "BFEQI" : "BFNEI"
    // "a != b" is true for NaN, so the false-jump of != is BFEQI, which is false for NaN. Correct.
    emit(g, name + " " + rn(ra) + ", " + v + ", " + target)
    return true
  }
  const rs = genPair(g, n.a, n.b, dst)
  let a = rs[0]
  let b = rs[1]
  let name = ""
  if (op === "<") name = whenFalse ? "BFNLT" : "BFLT"
  else if (op === "<=") name = whenFalse ? "BFNLE" : "BFLE"
  else if (op === ">") {
    name = whenFalse ? "BFNLT" : "BFLT"
    a = rs[1]
    b = rs[0]
  } else if (op === ">=") {
    name = whenFalse ? "BFNLE" : "BFLE"
    a = rs[1]
    b = rs[0]
  } else if (op === "===" || op === "==") name = whenFalse ? "BFNE" : "BFEQ"
  else name = whenFalse ? "BFEQ" : "BFNE"
  emit(g, name + " " + rn(a) + ", " + rn(b) + ", " + target)
  return true
}

// ---- arrays, objects, members ----

function genArrayLit(g: Gen, n: Node, dst: number): void {
  const count = n.list.length
  saveTemps(g, dst)
  emit(g, "FMOVI r1, " + count)
  emit(g, "CALL __arr_new_n")
  restoreTemps(g, dst)
  emit(g, "MOV " + rn(dst) + ", r0")
  let i = 0
  while (i < count) {
    emit(g, "PUSH " + rn(dst))
    genTo(g, n.list[i], dst + 1)
    emit(g, "POP " + rn(dst))
    emit(g, "LD64 r0, [" + rn(dst) + "+16]")
    emit(g, "ST64 [r0+" + i * 8 + "], " + rn(dst + 1))
    i++
  }
}

function genObjectLit(g: Gen, n: Node, dst: number): void {
  const size = n.ty.fnames.length * 8
  emit(g, "ALLOCI " + rn(dst) + ", " + size)
  let i = 0
  while (i < n.list.length) {
    const f = n.list[i]
    emit(g, "PUSH " + rn(dst))
    genTo(g, f.a, dst + 1)
    emit(g, "POP " + rn(dst))
    emit(g, "ST64 [" + rn(dst) + "+" + f.slot * 8 + "], " + rn(dst + 1))
    i++
  }
}

function genIndexLoad(g: Gen, n: Node, dst: number): void {
  const rs = genPair(g, n.a, n.b, dst)
  if (n.a.ty.kind === "array") emit(g, "LDAX " + rn(dst) + ", " + rn(rs[0]) + ", " + rn(rs[1]))
  else emit(g, "SCHAR " + rn(dst) + ", " + rn(rs[0]) + ", " + rn(rs[1]))
}

function genMember(g: Gen, n: Node, dst: number): void {
  const r = operand(g, n.a, dst)
  if (n.tag === "length") {
    emit(g, "LDI2F " + rn(dst) + ", [" + rn(r) + "]")
  } else {
    emit(g, "LD64 " + rn(dst) + ", [" + rn(r) + "+" + n.slot * 8 + "]")
  }
}

// ---- assignment ----

// The address of an assignable element or field in `dst`.
function genAddrTo(g: Gen, n: Node, dst: number): void {
  if (n.kind === "index") {
    const rs = genPair(g, n.a, n.b, dst)
    emit(g, "AADDR " + rn(dst) + ", " + rn(rs[0]) + ", " + rn(rs[1]))
  } else {
    const r = operand(g, n.a, dst)
    emit(g, "ADDI " + rn(dst) + ", " + rn(r) + ", " + n.slot * 8)
  }
}

function genAssign(g: Gen, n: Node, dst: number): void {
  const target = n.a
  const compound = n.text !== "="
  if (target.kind === "id") {
    if (!compound) {
      genTo(g, n.b, dst)
      storeVar(g, target, dst)
      return
    }
    if (n.tag === "concat") {
      genConcat(g, target, n.b, dst)
      storeVar(g, target, dst)
      return
    }
    // x op= y: compute into the variable's own register when it has one
    const home = target.slot >= 0 ? homeOf(g, target.slot).reg : -1
    const out = home >= 0 ? home : dst
    const cur = operand(g, target, dst)
    emitCompound(g, n, out, cur, dst + 1)
    if (home < 0) storeVar(g, target, dst)
    else if (dst !== home) emit(g, "MOV " + rn(dst) + ", " + rn(home))
    return
  }
  // element or field
  if (!compound) {
    genAddrOrPair(g, target, n.b, dst)
    return
  }
  genAddrTo(g, target, dst)
  emit(g, "LD64 " + rn(dst + 1) + ", [" + rn(dst) + "]")
  if (n.tag === "concat") {
    saveTemps(g, dst)
    emit(g, "PUSH " + rn(dst))
    emit(g, "PUSH " + rn(dst + 1))
    genTo(g, n.b, dst + 2)
    convertToString(g, n.b.ty, dst + 2)
    emit(g, "MOV r2, " + rn(dst + 2))
    emit(g, "POP r1")
    emit(g, "CALL __str_concat")
    emit(g, "POP " + rn(dst))
    emit(g, "ST64 [" + rn(dst) + "], r0")
    restoreTemps(g, dst)
    emit(g, "MOV " + rn(dst) + ", r0")
    return
  }
  emitCompound(g, n, dst + 1, dst + 1, dst + 2)
  emit(g, "ST64 [" + rn(dst) + "], " + rn(dst + 1))
  emit(g, "MOV " + rn(dst) + ", " + rn(dst + 1))
}

// out = cur op (n.b), with `scratch` free for the right operand
function emitCompound(g: Gen, n: Node, out: number, cur: number, scratch: number): void {
  const op = n.text.slice(0, 1)
  const fop = floatOp(op)
  if (n.b.kind === "num" && isSmallInt(n.b.num)) {
    const imm = op === "+" ? "FADDI" : op === "-" ? "FSUBI" : op === "*" ? "FMULI" : op === "/" ? "FDIVI" : "FMODI"
    emit(g, imm + " " + rn(out) + ", " + rn(cur) + ", " + n.b.num)
    return
  }
  const rb = operand(g, n.b, scratch)
  emit(g, fop + " " + rn(out) + ", " + rn(cur) + ", " + rn(rb))
}

function storeVar(g: Gen, target: Node, src: number): void {
  if (target.slot >= 0) storeLocal(g, target.slot, src)
  else emit(g, "STG " + rn(src) + ", " + target.tag)
}

// target = value for an element or a field. The value is the result.
function genAddrOrPair(g: Gen, target: Node, value: Node, dst: number): void {
  if (target.kind === "index") {
    const rs = genPair(g, target.a, target.b, dst)
    // the value may itself call, so keep the two operands safe
    if (hasCall(value)) {
      emit(g, "PUSH " + rn(rs[0]))
      emit(g, "PUSH " + rn(rs[1]))
      genTo(g, value, dst + 2)
      emit(g, "POP " + rn(dst + 1))
      emit(g, "POP " + rn(dst))
      emit(g, "STAX " + rn(dst) + ", " + rn(dst + 1) + ", " + rn(dst + 2))
      emit(g, "MOV " + rn(dst) + ", " + rn(dst + 2))
      return
    }
    const rv = operand(g, value, dst + 2)
    emit(g, "STAX " + rn(rs[0]) + ", " + rn(rs[1]) + ", " + rn(rv))
    if (rv !== dst) emit(g, "MOV " + rn(dst) + ", " + rn(rv))
    return
  }
  const robj = operand(g, target.a, dst)
  if (hasCall(value)) {
    emit(g, "PUSH " + rn(robj))
    genTo(g, value, dst + 1)
    emit(g, "POP " + rn(dst))
    emit(g, "ST64 [" + rn(dst) + "+" + target.slot * 8 + "], " + rn(dst + 1))
    emit(g, "MOV " + rn(dst) + ", " + rn(dst + 1))
    return
  }
  const rv = operand(g, value, dst + 1)
  emit(g, "ST64 [" + rn(robj) + "+" + target.slot * 8 + "], " + rn(rv))
  if (rv !== dst) emit(g, "MOV " + rn(dst) + ", " + rn(rv))
}

function genUpdate(g: Gen, n: Node, dst: number): void {
  const t = n.a
  const delta = n.text === "++" ? 1 : -1
  const op = n.text === "++" ? "FADDI" : "FSUBI"
  if (t.kind === "id") {
    const home = t.slot >= 0 ? homeOf(g, t.slot).reg : -1
    if (home >= 0) {
      if (n.num === 0) emit(g, "MOV " + rn(dst) + ", " + rn(home))
      emit(g, "FADDI " + rn(home) + ", " + rn(home) + ", " + delta)
      if (n.num === 1) emit(g, "MOV " + rn(dst) + ", " + rn(home))
      return
    }
    genTo(g, t, dst)
    emit(g, op + " " + rn(dst + 1) + ", " + rn(dst) + ", 1")
    storeVar(g, t, dst + 1)
    if (n.num === 1) emit(g, "MOV " + rn(dst) + ", " + rn(dst + 1))
    return
  }
  genAddrTo(g, t, dst)
  emit(g, "LD64 " + rn(dst + 1) + ", [" + rn(dst) + "]")
  emit(g, op + " " + rn(dst + 2) + ", " + rn(dst + 1) + ", 1")
  emit(g, "ST64 [" + rn(dst) + "], " + rn(dst + 2))
  emit(g, "MOV " + rn(dst) + ", " + rn(n.num === 1 ? dst + 2 : dst + 1))
}

// ---- calls ----

function genCall(g: Gen, n: Node, dst: number): void {
  if (n.tag === "builtin") {
    genBuiltin(g, n, dst)
    return
  }
  if (n.tag === "intrinsic") {
    genIntrinsic(g, n, dst)
    return
  }
  const args: Node[] = []
  if (n.tag === "method") args.push(n.a.a)
  let i = 0
  while (i < n.list.length) {
    args.push(n.list[i])
    i++
  }
  // methods that touch an array's header directly are one instruction
  if (n.tag === "method" && n.text === "__arr_pop") {
    const r = operand(g, args[0], dst)
    emit(g, "APOP " + rn(dst) + ", " + rn(r))
    return
  }
  if (n.tag === "method" && n.text === "__str_charCodeAt") {
    const rs = genPair(g, args[0], args[1], dst)
    emit(g, "SCHAR " + rn(dst) + ", " + rn(rs[0]) + ", " + rn(rs[1]))
    return
  }
  if (n.tag === "method" && n.text === "__arr_push") {
    genPush(g, args[0], args[1], dst)
    return
  }
  if (g.liveFloor >= dst) {
    // Nothing live sits in r1..r(dst-1), so each argument can be computed in the register it is passed in.
    // The floor drops to 1 meanwhile, so a call inside a later argument saves the earlier ones.
    const savedFloor = g.liveFloor
    g.liveFloor = 1
    i = 0
    while (i < args.length) {
      genTo(g, args[i], 1 + i)
      i++
    }
    g.liveFloor = savedFloor
    emit(g, "CALL " + n.text)
    if (n.ty.kind !== "void") emit(g, "MOV " + rn(dst) + ", r0")
    return
  }
  saveTemps(g, dst)
  // evaluate left to right into temporaries that cannot be disturbed, then move to r1..rN
  i = 0
  while (i < args.length) {
    genTo(g, args[i], dst + i)
    i++
  }
  i = 0
  while (i < args.length) {
    emit(g, "MOV " + rn(1 + i) + ", " + rn(dst + i))
    i++
  }
  emit(g, "CALL " + n.text)
  restoreTemps(g, dst)
  if (n.ty.kind !== "void") emit(g, "MOV " + rn(dst) + ", r0")
}

// push: try the one-instruction path, and call the growth routine when the array is full
function genPush(g: Gen, arr: Node, value: Node, dst: number): void {
  const ra = operand(g, arr, dst)
  const rv = operand(g, value, dst + 1)
  const ok = lab(g, "pushed")
  emit(g, "APUSH r0, " + rn(ra) + ", " + rn(rv))
  emit(g, "JNZ r0, " + ok)
  saveTemps(g, dst)
  moveArgs(g, [ra, rv])
  emit(g, "CALL __arr_push")
  restoreTemps(g, dst)
  place(g, ok)
}

function genBuiltin(g: Gen, n: Node, dst: number): void {
  const name = n.text
  if (name === "console.log" || name === "console.error") {
    const fd = name === "console.log" ? 1 : 2
    let i = 0
    saveTemps(g, dst)
    while (i < n.list.length) {
      if (i > 0) {
        emit(g, "FMOVI r1, " + fd)
        emit(g, "LI r2, s_space")
        emit(g, "CALL __print")
      }
      genTo(g, n.list[i], dst)
      const t = n.list[i].ty
      emit(g, "MOV r2, " + rn(dst))
      emit(g, "FMOVI r1, " + fd)
      if (t.kind === "string") emit(g, "CALL __print")
      else if (t.kind === "number") emit(g, "CALL __log_num")
      else emit(g, "CALL __log_bool")
      i++
    }
    emit(g, "FMOVI r1, " + fd)
    emit(g, "LI r2, s_nl")
    emit(g, "CALL __print")
    restoreTemps(g, dst)
    return
  }
  if (name === "arenaMark") {
    emit(g, "HEAPMARK r0")
    emit(g, "I2F " + rn(dst) + ", r0")
    return
  }
  if (name === "arenaFree") {
    genTo(g, n.list[0], dst)
    emit(g, "F2I r0, " + rn(dst))
    emit(g, "HEAPFREE r0")
    return
  }
  if (name === "String.fromCharCode") {
    genTo(g, n.list[0], dst)
    saveTemps(g, dst)
    emit(g, "MOV r1, " + rn(dst))
    emit(g, "CALL __str_fromCharCode")
    restoreTemps(g, dst)
    emit(g, "MOV " + rn(dst) + ", r0")
    return
  }
  if (name === "Math.min" || name === "Math.max") {
    const rs = genPair(g, n.list[0], n.list[1], dst)
    saveTemps(g, dst)
    moveArgs(g, [rs[0], rs[1]])
    emit(g, "CALL " + (name === "Math.min" ? "__math_min" : "__math_max"))
    restoreTemps(g, dst)
    emit(g, "MOV " + rn(dst) + ", r0")
    return
  }
  if (name === "Number") {
    genTo(g, n.list[0], dst)
    saveTemps(g, dst)
    emit(g, "MOV r1, " + rn(dst))
    emit(g, "CALL __str_num")
    restoreTemps(g, dst)
    emit(g, "MOV " + rn(dst) + ", r0")
    return
  }
  const r = operand(g, n.list[0], dst)
  if (name === "Math.floor") emit(g, "FFLOOR " + rn(dst) + ", " + rn(r))
  else if (name === "Math.ceil") emit(g, "FCEIL " + rn(dst) + ", " + rn(r))
  else if (name === "Math.trunc") emit(g, "FTRUNC " + rn(dst) + ", " + rn(r))
  else if (name === "Math.abs") emit(g, "FABS " + rn(dst) + ", " + rn(r))
  else if (name === "Math.sqrt") emit(g, "FSQRT " + rn(dst) + ", " + rn(r))
}

// Intrinsics. Number arguments arrive as doubles and are converted to integers just before
// the instruction (F2I). A number result is converted back (I2F).
function genIntrinsic(g: Gen, n: Node, dst: number): void {
  const name = n.text
  let keepDouble = 0
  if (name === "__fmtnum") keepDouble = 2
  saveTemps(g, dst)
  let i = 0
  while (i < n.list.length) {
    genTo(g, n.list[i], dst + i)
    const isNum = n.list[i].ty.kind === "number"
    const keep = i === 1 && keepDouble === 2
    if (isNum && !keep) emit(g, "F2I " + rn(dst + i) + ", " + rn(dst + i))
    i++
  }
  i = 0
  while (i < n.list.length) {
    emit(g, "MOV " + rn(1 + i) + ", " + rn(dst + i))
    i++
  }
  let result = "i"
  if (name === "__ldi") emit(g, "LD64 r0, [r1]")
  else if (name === "__ldf") {
    emit(g, "LD64 r0, [r1]")
    result = "d"
  } else if (name === "__ldp") {
    emit(g, "LD64 r0, [r1]")
    result = ""
  } else if (name === "__ld8") emit(g, "LD8 r0, [r1]")
  else if (name === "__sti" || name === "__stp" || name === "__stf") {
    emit(g, "ST64 [r1], r2")
    result = ""
  } else if (name === "__st8") {
    emit(g, "ST8 [r1], r2")
    result = ""
  } else if (name === "__toaddr") emit(g, "MOV r0, r1")
  else if (name === "__fromaddr") {
    emit(g, "MOV r0, r1")
    result = ""
  } else if (name === "__memcpy") {
    emit(g, "MEMCPY r1, r2, r3")
    result = ""
  } else if (name === "__memset") {
    emit(g, "MEMSET r1, r2, r3")
    result = ""
  } else if (name === "__memcmp") emit(g, "MEMCMP r0, r1, r2, r3")
  else if (name === "__sbrk") emit(g, "SBRK r0, r1")
  else if (name === "__alloc_vm") emit(g, "ALLOC r0, r1")
  else if (name === "__write") emit(g, "SYSCALL SYS_WRITE")
  else if (name === "__read") emit(g, "SYSCALL SYS_READ")
  else if (name === "__open") emit(g, "SYSCALL SYS_OPEN")
  else if (name === "__close") emit(g, "SYSCALL SYS_CLOSE")
  else if (name === "__argc") emit(g, "SYSCALL SYS_ARGC")
  else if (name === "__argv") emit(g, "SYSCALL SYS_ARGV")
  else if (name === "__exit") {
    emit(g, "EXIT r1")
    result = ""
  } else if (name === "__trap") {
    emit(g, "TRAP")
    result = ""
  } else if (name === "__fmtnum") emit(g, "SYSCALL SYS_FMTNUM")
  else if (name === "__parsenum") {
    emit(g, "SYSCALL SYS_PARSENUM")
    result = "d"
  } else fail(n.file, n.line, n.col, "internal: intrinsic " + name)
  if (result === "i") emit(g, "I2F r0, r0")
  restoreTemps(g, dst)
  if (n.ty.kind !== "void") emit(g, "MOV " + rn(dst) + ", r0")
}

// ---- statements ----

function genStmt(g: Gen, n: Node): void {
  setLine(g, n)
  const k = n.kind
  if (k === "block") {
    let i = 0
    while (i < n.list.length) {
      genStmt(g, n.list[i])
      i++
    }
  } else if (k === "var") {
    if (n.slot >= 0) {
      const h = homeOf(g, n.slot)
      if (h.reg >= 0) {
        genInto(g, n.a, h.reg)
      } else {
        genTo(g, n.a, FIRST_TEMP)
        storeLocal(g, n.slot, FIRST_TEMP)
      }
    } else {
      genTo(g, n.a, FIRST_TEMP)
      emit(g, "STG r1, " + n.tag)
    }
  } else if (k === "expr") {
    genEffect(g, n.a)
  } else if (k === "if") {
    const no = lab(g, "else")
    const end = lab(g, "end")
    genJumpIfFalse(g, n.a, no, FIRST_TEMP)
    genStmt(g, n.b)
    if (n.c !== NIL) {
      emit(g, "JMP " + end)
      place(g, no)
      genStmt(g, n.c)
      place(g, end)
    } else {
      place(g, no)
    }
  } else if (k === "while") {
    // Inverted: test once before the loop, then run the body and test again at the bottom, so an
    // iteration ends in one conditional branch back to the top instead of a branch and a jump.
    const top = lab(g, "while")
    const cont = lab(g, "wcont")
    const end = lab(g, "wend")
    g.loops.push(cont + " " + end)
    genJumpIfFalse(g, n.a, end, FIRST_TEMP)
    place(g, top)
    genStmt(g, n.b)
    place(g, cont)
    setLine(g, n)
    genJumpIfTrue(g, n.a, top, FIRST_TEMP)
    place(g, end)
    g.loops.pop()
  } else if (k === "for") {
    const top = lab(g, "for")
    const cont = lab(g, "fcont")
    const end = lab(g, "fend")
    if (n.a !== NIL) genStmt(g, n.a)
    g.loops.push(cont + " " + end)
    if (n.b !== NIL) genJumpIfFalse(g, n.b, end, FIRST_TEMP)
    place(g, top)
    genStmt(g, n.d)
    place(g, cont)
    if (n.c !== NIL) genEffect(g, n.c)
    if (n.b !== NIL) genJumpIfTrue(g, n.b, top, FIRST_TEMP)
    else emit(g, "JMP " + top)
    place(g, end)
    g.loops.pop()
  } else if (k === "return") {
    if (n.a !== NIL) {
      genTo(g, n.a, FIRST_TEMP)
      emit(g, "MOV r0, r1")
    }
    emit(g, "JMP " + g.fname + "_ret")
  } else if (k === "break" || k === "continue") {
    const top = g.loops[g.loops.length - 1]
    const at = top.indexOf(" ")
    emit(g, "JMP " + (k === "break" ? top.slice(at + 1, top.length) : top.slice(0, at)))
  }
}

// ---- functions ----

// Give the busiest locals a register. Parameters count as used once more, for the move on entry.
function assignHomes(g: Gen, f: FuncInfo, nparams: number): void {
  const syms = f.syms
  const order: number[] = []
  let i = 0
  while (i < syms.length) {
    order.push(i)
    i++
  }
  // selection by uses, most used first
  let a = 0
  while (a < order.length) {
    let best = a
    let b = a + 1
    while (b < order.length) {
      if (syms[order[b]].uses > syms[order[best]].uses) best = b
      b++
    }
    const t = order[a]
    order[a] = order[best]
    order[best] = t
    a++
  }
  g.homes = []
  i = 0
  while (i < syms.length) {
    g.homes.push({ reg: -1, off: 0 })
    i++
  }
  // Greedy, most used first. A variable takes the lowest saved register whose current occupants
  // are all dead before it is declared or declared after it ends, so variables in separate blocks
  // share a register. The checker records each variable's life as the ticks lo to hi.
  g.usedRegs = []
  const occupants: Sym[][] = [[], [], [], [], []]
  let k = 0
  while (k < order.length) {
    const s = syms[order[k]]
    if (s.uses >= 2) {
      let r = 0
      let placed = false
      while (r < 5 && !placed) {
        let clash = false
        let o = 0
        while (o < occupants[r].length) {
          const t = occupants[r][o]
          if (s.lo <= t.hi && t.lo <= s.hi) clash = true
          o++
        }
        if (!clash) {
          occupants[r].push(s)
          g.homes[s.slot].reg = FIRST_SAVED + r
          placed = true
        }
        r++
      }
    }
    k++
  }
  let r2 = 0
  while (r2 < 5) {
    if (occupants[r2].length > 0) g.usedRegs.push(FIRST_SAVED + r2)
    r2++
  }
  // memory locals follow the saved registers in the frame
  let off = -8 * g.usedRegs.length
  i = 0
  while (i < syms.length) {
    if (g.homes[syms[i].slot].reg < 0) {
      off = off - 8
      g.homes[syms[i].slot].off = off
    }
    i++
  }
}

function genFunc(g: Gen, f: FuncInfo): void {
  const keep = g.out
  g.out = []
  genFuncRaw(g, f)
  const clean = peephole(g.out)
  g.out = keep
  let i = 0
  while (i < clean.length) {
    g.out.push(clean[i])
    i++
  }
}

function genFuncRaw(g: Gen, f: FuncInfo): void {
  g.fname = f.label
  assignHomes(g, f, f.params.length)
  g.parked = [0, 0, 0, 0, 0]
  g.extraUsed = [false, false, false, false, false]
  g.extraRegs = []
  g.usedMask = [false, false, false, false, false]
  let i = 0
  while (i < g.usedRegs.length) {
    g.usedMask[g.usedRegs[i] - FIRST_SAVED] = true
    i++
  }
  let memLocals = 0
  i = 0
  while (i < f.syms.length) {
    if (g.homes[f.syms[i].slot].reg < 0) memLocals++
    i++
  }
  g.out.push(".file \"" + f.node.file + "\"")
  g.out.push(".func " + f.label)
  place(g, f.label)
  g.line = -1
  setLine(g, f.node)
  g.liveFloor = FIRST_TEMP

  // The body comes first, into its own list, because only then do we know which extra saved
  // registers were used to park values across calls.
  const head = g.out
  g.out = []
  i = 0
  while (i < f.node.list.length) {
    const slot = f.node.list[i].slot
    const h = g.homes[slot]
    if (h.reg >= 0) emit(g, "MOV " + rn(h.reg) + ", " + rn(i + 1))
    else emit(g, "ST64 " + memOff(h) + ", " + rn(i + 1))
    i++
  }
  const early = earlyReturn(f)
  if (early !== NIL) {
    // the first statement runs before the prologue, so the body starts at the second one
    let s = 1
    while (s < f.node.a.list.length) {
      genStmt(g, f.node.a.list[s])
      s++
    }
  } else {
    genStmt(g, f.node.a)
  }
  const body = g.out
  g.out = head
  if (early !== NIL) genEarlyReturn(g, f, early)

  // saved registers: those that hold variables, then those used only for parking
  const saved: number[] = []
  i = 0
  while (i < g.usedRegs.length) {
    saved.push(g.usedRegs[i])
    i++
  }
  i = 0
  while (i < g.extraRegs.length) {
    saved.push(g.extraRegs[i])
    i++
  }
  // memory locals sit below the saved registers
  let shift = 8 * (saved.length - g.usedRegs.length)
  // fp is only needed to address memory locals. Without any, saved registers go on the stack with
  // PUSH and POP, and the function has no frame pointer at all.
  const hasFrame = memLocals > 0
  g.hasFrame = hasFrame
  if (hasFrame) {
    emit(g, "PUSH fp")
    emit(g, "MOV fp, sp")
    const frame = 8 * (saved.length + memLocals)
    if (frame > 0) emit(g, "ADDI sp, sp, " + -frame)
    i = 0
    while (i < saved.length) {
      emit(g, "ST64 [fp" + (-8 * (i + 1)) + "], " + rn(saved[i]))
      i++
    }
  } else {
    i = 0
    while (i < saved.length) {
      emit(g, "PUSH " + rn(saved[i]))
      i++
    }
  }
  i = 0
  while (i < body.length) {
    g.out.push(shiftFrameRef(body[i], shift))
    i++
  }
  place(g, f.label + "_ret")
  if (hasFrame) {
    i = 0
    while (i < saved.length) {
      emit(g, "LD64 " + rn(saved[i]) + ", [fp" + (-8 * (i + 1)) + "]")
      i++
    }
    emit(g, "MOV sp, fp")
    emit(g, "POP fp")
  } else {
    i = saved.length - 1
    while (i >= 0) {
      emit(g, "POP " + rn(saved[i]))
      i--
    }
  }
  emit(g, "RET")
  g.out.push(".endfunc")
}

// ---- early return before the prologue ----
//
// A function that starts with `if (test) return value` often takes that path most of the time
// (the base case of a recursion, a guard). When test and value read nothing but parameters, they can
// run before the prologue, so that path saves and restores no registers at all. The parameters are
// still in r1..r5 then. Everything is computed in r6 and above, which the caller does not expect kept.

// The expression uses only parameters, constants, arithmetic, comparisons and && || ! -.
function simpleParamExpr(n: Node, nparams: number): boolean {
  const k = n.kind
  if (k === "num" || k === "true" || k === "false") return true
  if (k === "id") return n.slot >= 0 && n.slot < nparams
  if (k === "unary") return (n.text === "-" || n.text === "!") && simpleParamExpr(n.a, nparams)
  if (k === "binary") return n.tag !== "concat" && n.tag !== "str" && simpleParamExpr(n.a, nparams) && simpleParamExpr(n.b, nparams)
  if (k === "logical") return simpleParamExpr(n.a, nparams) && simpleParamExpr(n.b, nparams)
  return false
}

// The statement `if (test) return value` or `if (test) { return value }`, with no else.
// Returns the return statement, or NIL when the function does not start that way.
function earlyReturn(f: FuncInfo): Node {
  const body = f.node.a
  if (body.kind !== "block" || body.list.length === 0) return NIL
  const first = body.list[0]
  if (first.kind !== "if" || first.c !== NIL) return NIL
  let ret = first.b
  if (ret.kind === "block") {
    if (ret.list.length !== 1) return NIL
    ret = ret.list[0]
  }
  if (ret.kind !== "return") return NIL
  const np = f.params.length
  if (np === 0 || np > 5) return NIL
  if (!simpleParamExpr(first.a, np)) return NIL
  if (ret.a !== NIL && !simpleParamExpr(ret.a, np)) return NIL
  return ret
}

function genEarlyReturn(g: Gen, f: FuncInfo, ret: Node): void {
  const first = f.node.a.list[0]
  // for this stretch every parameter lives in the register it arrived in
  const saved: Home[] = []
  let i = 0
  while (i < f.params.length) {
    const slot = f.node.list[i].slot
    saved.push(g.homes[slot])
    g.homes[slot] = { reg: i + 1, off: 0 }
    i++
  }
  const skip = lab(g, "full")
  setLine(g, first)
  genJumpIfFalse(g, first.a, skip, 6)
  if (ret.a !== NIL) {
    genTo(g, ret.a, 6)
    emit(g, "MOV r0, r6")
  }
  emit(g, "RET")
  place(g, skip)
  i = 0
  while (i < f.params.length) {
    g.homes[f.node.list[i].slot] = saved[i]
    i++
  }
}

// Memory locals were given offsets assuming only the variable registers are saved. When parking
// registers are saved too, every [fp-N] reference to a memory local moves down by `shift`.
function shiftFrameRef(line: string, shift: number): string {
  if (shift === 0) return line
  const at = line.indexOf("[fp-")
  if (at < 0) return line
  const rest = line.slice(at + 4, line.length)
  const close = rest.indexOf("]")
  const num = Number(rest.slice(0, close))
  return line.slice(0, at) + "[fp-" + (num + shift) + rest.slice(close, rest.length)
}

function escapeBytes(s: string): string {
  const parts: string[] = []
  let i = 0
  while (i < s.length) {
    parts.push("" + s.charCodeAt(i))
    i++
  }
  return parts.join(", ")
}

export function generate(prog: Program, entryFile: string): string {
  const g: Gen = {
    out: [], label: 0, loops: [], fname: "", prog: prog, file: entryFile, line: 0,
    homes: [], usedRegs: [], depth: 0, hasFrame: false, isStart: false,
    liveFloor: 1, parked: [0, 0, 0, 0, 0], usedMask: [false, false, false, false, false], extraUsed: [false, false, false, false, false], extraRegs: [],
  }
  g.out.push(".entry __start")
  g.out.push(".data")
  g.out.push("s_space: .word 1")
  g.out.push("    .byte 32, 0, 0, 0, 0, 0, 0, 0")
  g.out.push("s_nl: .word 1")
  g.out.push("    .byte 10, 0, 0, 0, 0, 0, 0, 0")
  g.out.push("s_idx: .word 26")
  g.out.push("    .byte 101, 114, 114, 111, 114, 58, 32, 105, 110, 100, 101, 120, 32, 111, 117, 116, 32, 111, 102, 32, 114, 97, 110, 103, 101, 10, 0, 0, 0, 0, 0, 0")
  g.out.push("s_true: .word 4")
  g.out.push("    .byte 116, 114, 117, 101, 0, 0, 0, 0")
  g.out.push("s_false: .word 5")
  g.out.push("    .byte 102, 97, 108, 115, 101, 0, 0, 0")
  let i = 0
  while (i < prog.strings.length) {
    const s = prog.strings[i]
    g.out.push("s_" + i + ": .word " + s.length)
    const padded = s.length + ((8 - (s.length % 8)) % 8)
    let bytes = escapeBytes(s)
    if (padded > s.length) bytes = (s.length > 0 ? bytes + ", " : "") + escapeBytes(repeatStr(String.fromCharCode(0), padded - s.length))
    if (padded > 0) g.out.push("    .byte " + bytes)
    i++
  }
  g.out.push(".bss")
  i = 0
  while (i < prog.globals.length) {
    g.out.push(prog.globals[i].label + ": .zero 8")
    i++
  }
  g.out.push(".code")
  g.out.push("    TRAP")
  i = 0
  while (i < prog.funcs.length) {
    genFunc(g, prog.funcs[i])
    i++
  }
  // start: set up the heap, run the top-level statements, exit
  const st = prog.start
  g.isStart = true
  g.fname = "__start"
  assignHomes(g, st, 0)
  g.usedMask = [false, false, false, false, false]
  i = 0
  while (i < g.usedRegs.length) {
    g.usedMask[g.usedRegs[i] - FIRST_SAVED] = true
    i++
  }
  g.liveFloor = FIRST_TEMP
  g.out.push(".file \"" + entryFile + "\"")
  g.out.push(".func __start")
  place(g, "__start")
  emit(g, "MOV fp, sp")
  let memLocals = 0
  i = 0
  while (i < st.syms.length) {
    if (g.homes[st.syms[i].slot].reg < 0) memLocals++
    i++
  }
  const frame = 8 * (g.usedRegs.length + memLocals)
  if (frame > 0) emit(g, "ADDI sp, sp, " + -frame)
  g.line = -1
  i = 0
  while (i < prog.top.length) {
    genStmt(g, prog.top[i])
    i++
  }
  emit(g, "LI r1, 0")
  emit(g, "EXIT r1")
  g.out.push(".endfunc")
  return g.out.join("\n") + "\n"
}

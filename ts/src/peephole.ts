import { splitChar } from "./util.ts"

function trimLeft(s: string): string {
  let i = 0
  while (i < s.length && s.charCodeAt(i) === 32) i++
  return s.slice(i, s.length)
}

// Cleans up the assembly lines of one function. Each rule only looks at neighbouring
// instructions, and never moves an instruction across a label or a branch, so it is safe
// without any flow analysis.

function isMov(s: string): boolean {
  return s.slice(0, 8) === "    MOV "
}

// "    MOV r1, r2" -> ["r1", "r2"]. Anything that is not a plain two-register MOV gives an empty list.
function movParts(s: string): string[] {
  if (!isMov(s)) return []
  const rest = s.slice(8, s.length)
  const c = rest.indexOf(", ")
  if (c < 0) return []
  return [rest.slice(0, c), rest.slice(c + 2, rest.length)]
}

function isLabel(s: string): boolean {
  return s.slice(0, 1) !== " " && s.slice(0, 1) !== "."
}

function isDirective(s: string): boolean {
  return s.slice(0, 1) === "."
}

// The register an instruction writes, or "" when it is not a simple one-destination instruction.
// Only the forms the generator emits are listed, and anything unknown counts as "writes nothing safe".
const WRITES_FIRST: string[] = [
  "MOV", "MOVI", "LI", "LIF", "FMOVI", "LD64", "LD8", "LDG", "LDAX", "SCHAR", "LDI2F", "FADD", "FSUB", "FMUL", "FDIV",
  "FMOD", "FADDI", "FSUBI", "FMULI", "FDIVI", "FMODI", "FNEG", "FABS", "FSQRT", "FFLOOR", "FCEIL", "FTRUNC",
  "FLT", "FLE", "FEQ", "FNE", "EQ", "NE", "LNOT", "ADDI", "ADD", "SUB", "I2F", "F2I", "FLTI", "APOP", "ALLOC", "ALLOCI",
  "AADDR", "LTI", "LEI", "GTI", "GEI",
]

function opOf(s: string): string {
  const t = s.slice(4, s.length)
  const sp = t.indexOf(" ")
  return sp < 0 ? t : t.slice(0, sp)
}

function operands(s: string): string[] {
  const t = s.slice(4, s.length)
  const sp = t.indexOf(" ")
  if (sp < 0) return []
  const raw = t.slice(sp + 1, t.length)
  const parts = splitChar(raw, 44)
  const out: string[] = []
  let i = 0
  while (i < parts.length) {
    out.push(trimLeft(parts[i]))
    i++
  }
  return out
}

function writesFirst(op: string): boolean {
  let i = 0
  while (i < WRITES_FIRST.length) {
    if (WRITES_FIRST[i] === op) return true
    i++
  }
  return false
}

// Does the instruction mention register r anywhere other than as its first (destination) operand?
function readsReg(s: string, r: string): boolean {
  const ops = operands(s)
  const op = opOf(s)
  let i = writesFirst(op) ? 1 : 0
  while (i < ops.length) {
    const o = ops[i]
    if (o === r) return true
    // memory operands look like [r3+8] or [r3]
    if (o.indexOf("[" + r + "]") >= 0 || o.indexOf("[" + r + "+") >= 0 || o.indexOf("[" + r + "-") >= 0) return true
    i++
  }
  return false
}

// Instructions that end straight-line reasoning: after one, a register's value is unknown to the rule.
function isControl(s: string): boolean {
  if (isLabel(s) || isDirective(s)) return true
  const op = opOf(s)
  return op === "JMP" || op === "JZ" || op === "JNZ" || op === "CALL" || op === "CALLR" || op === "RET" || op === "HALT" ||
    op === "EXIT" || op === "TRAP" || op === "TRY" || op === "ENDTRY" || op === "THROW" || op === "SYSCALL" || op === "JTAB" || op.slice(0, 1) === "B"
}

// True when the first real line at or after `from` is the label `name` (directives and other labels may sit between).
function isLabelNext(lines: string[], from: number, name: string): boolean {
  let i = from
  while (i < lines.length) {
    const s = lines[i]
    if (isDirective(s)) {
      i++
      continue
    }
    if (isLabel(s)) {
      if (s === name + ":") return true
      i++
      continue
    }
    return false
  }
  return false
}

// One pass. Returns the new lines. `changed` is reported through the last element of the result of peepholeOnce.
function onePass(lines: string[]): string[] {
  const out: string[] = []
  let i = 0
  while (i < lines.length) {
    const a = lines[i]
    const mv = movParts(a)
    // a jump to the very next line does nothing
    if (opOf(a) === "JMP" && isLabelNext(lines, i + 1, operands(a)[0])) {
      i++
      continue
    }
    // MOV rX, rX does nothing
    if (mv.length === 2 && mv[0] === mv[1]) {
      i++
      continue
    }
    // MOV rA, rB ; MOV rB, rA  : the second one does nothing
    if (mv.length === 2 && i + 1 < lines.length) {
      const nx = movParts(lines[i + 1])
      if (nx.length === 2 && nx[0] === mv[1] && nx[1] === mv[0]) {
        out.push(a)
        i = i + 2
        continue
      }
    }
    // MOV rA, rB ; MOV rC, rA : when rA is overwritten right after, the pair can read rB directly
    // (kept simple: only when the first MOV's target is the same as the second MOV's target)
    if (mv.length === 2 && i + 1 < lines.length) {
      const nx = movParts(lines[i + 1])
      if (nx.length === 2 && nx[0] === mv[0] && nx[1] !== mv[0]) {
        // MOV rA, rB ; MOV rA, rC : the first is dead (rC is not rA, so the second does not read the first)
        i++
        continue
      }
    }
    // MOV rA, rB ; MOV rC, rA : when rA is not read again, copy from rB directly
    if (mv.length === 2 && i + 1 < lines.length) {
      const nx = movParts(lines[i + 1])
      if (nx.length === 2 && nx[1] === mv[0] && nx[0] !== mv[0] && nx[0] !== mv[1]) {
        if (deadAfter(lines, i + 2, mv[0])) {
          out.push("    MOV " + nx[0] + ", " + mv[1])
          i = i + 2
          continue
        }
      }
    }
    // an instruction that writes rX into a temporary, followed by MOV rY, rX where rX is read by no
    // later instruction in the same straight line: write rY directly.
    if (writesFirst(opOf(a)) && opOf(a) !== "MOV" && i + 1 < lines.length) {
      const nx = movParts(lines[i + 1])
      const ops = operands(a)
      if (nx.length === 2 && ops.length > 0 && nx[1] === ops[0] && nx[0] !== ops[0]) {
        const dead = deadAfter(lines, i + 2, ops[0])
        const srcUsesNew = readsReg(a, nx[0])
        // writing nx[0] early is fine if the instruction does not read it before writing (it reads sources first)
        if (dead && !srcUsesNew || dead && srcUsesNew && isSafeSelf(opOf(a))) {
          ops[0] = nx[0]
          out.push("    " + opOf(a) + " " + ops.join(", "))
          i = i + 2
          continue
        }
      }
    }
    out.push(a)
    i++
  }
  return out
}

// ALU instructions read all their sources before writing the destination, so a destination that is
// also a source is fine.
function isSafeSelf(op: string): boolean {
  return op !== "LDAX" && op !== "SCHAR" && op !== "AADDR" && op !== "ALLOC" && op !== "APOP"
}

function isScratch(r: string): boolean {
  return r === "r1" || r === "r2" || r === "r3" || r === "r4" || r === "r5" || r === "r6" || r === "r7" || r === "r8"
}

function isRetLabel(s: string): boolean {
  return s.length > 4 && s.slice(s.length - 4, s.length) === "_ret"
}

// True when register r is not read again before it is written, in the straight-line code from `from`.
// A label, a branch, a call or a return ends the search with "not dead": the value might be used there.
function deadAfter(lines: string[], from: number, r: string): boolean {
  let i = from
  while (i < lines.length) {
    const s = lines[i]
    if (isDirective(s)) {
      i++
      continue
    }
    if (isLabel(s)) return false
    const op = opOf(s)
    if (readsReg(s, r)) return false
    // A return reads only r0 and the saved registers r9..r13, so r1..r8 are dead there. That holds
    // for RET and for the jump to a function's own epilogue, whose label ends in "_ret".
    if (op === "RET" || (op === "JMP" && isRetLabel(operands(s)[0]))) return isScratch(r)
    // a call or a branch might read the register without naming it, so the value is not proven dead
    if (isControl(s)) return false
    const ops = operands(s)
    if (writesFirst(op) && ops.length > 0 && ops[0] === r) return true
    i++
  }
  return false
}

// ---- fusing the instructions a function begins and ends with ----
//
//   PUSH a ; PUSH b           becomes  PUSH2 a, b
//   POP a ; POP b             becomes  POP2 a, b
//   POP a ; RET               becomes  POPRET a
//   POP2 a, b ; RET           becomes  POP2RET a, b
//   MOV r0, a ; RET           becomes  RETR a
//
// Two instructions are fused only when they are next to each other, with no label between them (a label means
// something can jump to the second one alone) and no directive that could be a function end between them.
// A line number directive is not a boundary, so it is moved to the front of the fused instruction.
function isLineDirective(s: string): boolean {
  return s.slice(0, 6) === ".line "
}

// The index of the next instruction after i, skipping only line directives, or -1 when something else is in the way.
function nextInsn(lines: string[], i: number): number {
  let j = i + 1
  while (j < lines.length && isLineDirective(lines[j])) j++
  if (j >= lines.length) return -1
  const s = lines[j]
  if (isLabel(s) || isDirective(s)) return -1
  return j
}

function fuseEnds(lines: string[]): string[] {
  const out: string[] = []
  let i = 0
  while (i < lines.length) {
    const a = lines[i]
    if (isLabel(a) || isDirective(a)) {
      out.push(a)
      i++
      continue
    }
    const j = nextInsn(lines, i)
    if (j < 0) {
      out.push(a)
      i++
      continue
    }
    const b = lines[j]
    const oa = opOf(a)
    const ob = opOf(b)
    let fused = ""
    if (oa === "PUSH" && ob === "PUSH") fused = "PUSH2 " + operands(a)[0] + ", " + operands(b)[0]
    else if (oa === "POP" && ob === "POP") fused = "POP2 " + operands(a)[0] + ", " + operands(b)[0]
    else if (oa === "POP" && ob === "RET") fused = "POPRET " + operands(a)[0]
    else if (oa === "POP2" && ob === "RET") fused = "POP2RET " + operands(a).join(", ")
    else if (oa === "MOV" && ob === "RET" && operands(a)[0] === "r0") fused = "RETR " + operands(a)[1]
    if (fused === "") {
      out.push(a)
      i++
      continue
    }
    let k = i + 1
    while (k < j) {
      out.push(lines[k])
      k++
    }
    out.push("    " + fused)
    i = j + 1
  }
  return out
}

export function peephole(lines: string[]): string[] {
  let cur = lines
  let round = 0
  while (round < 4) {
    const next = onePass(cur)
    if (next.length === cur.length) break
    cur = next
    round++
  }
  // the ends are fused until nothing changes, so POP, POP, RET becomes POP, POPRET and then POP2RET
  let again = true
  let guard = 0
  while (again && guard < 6) {
    const fused = fuseEnds(cur)
    again = fused.length !== cur.length
    cur = fused
    guard++
  }
  return cur
}

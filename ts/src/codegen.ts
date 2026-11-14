import { NIL } from "./ast.ts"
import type { Node, Type } from "./ast.ts"
import { fail } from "./diag.ts"
import type { Program, FuncInfo } from "./checker.ts"
import { repeatStr } from "./util.ts"

// Output is chasm assembly text. Every expression leaves its value in r0.
// Operands wait on the machine stack, so nothing lives in a register across a call.
//
// Frame: [fp+16 ...] stack arguments (none: at most 5 parameters), [fp+8] return address,
// [fp+0] saved fp, [fp-8*(k+1)] local slot k.

interface Gen {
  out: string[]
  label: number
  loops: string[]       // innermost last: "<continue label> <break label>"
  fname: string
  fret: Type
  prog: Program
  file: string
  line: number
}

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
  if (n.line !== g.line || n.file !== g.file) {
    g.out.push(".line " + n.line)
    g.line = n.line
  }
}

function slotOff(slot: number): number {
  return -8 * (slot + 1)
}

// A double constant. Writing it as 64 bits keeps every value exact.
function loadNum(g: Gen, reg: string, v: number): void {
  emit(g, "LIF " + reg + ", " + numLit(v))
}

function numLit(v: number): string {
  if (v !== v) return "nan"
  if (v > 1.7976931348623157e308) return "inf"
  if (v < -1.7976931348623157e308) return "-inf"
  return "" + v
}

function loadInt(g: Gen, reg: string, v: number): void {
  emit(g, "LI " + reg + ", " + v)
}

function push(g: Gen): void {
  emit(g, "PUSH r0")
}

function pop(g: Gen, reg: string): void {
  emit(g, "POP " + reg)
}

// Address of the element of an array or the field of an interface: base in r0.
function genExpr(g: Gen, n: Node): void {
  const k = n.kind
  if (k === "num") {
    loadNum(g, "r0", n.num)
  } else if (k === "str") {
    emit(g, "LI r0, s_" + n.slot)
  } else if (k === "true") {
    loadInt(g, "r0", 1)
  } else if (k === "false") {
    loadInt(g, "r0", 0)
  } else if (k === "id") {
    if (n.slot >= 0) emit(g, "LD64 r0, [fp" + slotOff(n.slot) + "]")
    else {
      emit(g, "LI r1, " + n.tag)
      emit(g, "LD64 r0, [r1]")
    }
  } else if (k === "array") {
    genArrayLit(g, n)
  } else if (k === "object") {
    genObjectLit(g, n)
  } else if (k === "index") {
    genIndexAddr(g, n)
    emit(g, "LD64 r0, [r0]")
  } else if (k === "member") {
    genMember(g, n)
  } else if (k === "call") {
    genCall(g, n)
  } else if (k === "unary") {
    genUnary(g, n)
  } else if (k === "update") {
    genUpdate(g, n)
  } else if (k === "binary") {
    genBinary(g, n)
  } else if (k === "logical") {
    genLogical(g, n)
  } else if (k === "assign") {
    genAssign(g, n)
  } else if (k === "cond") {
    const no = lab(g, "no")
    const end = lab(g, "end")
    genExpr(g, n.a)
    emit(g, "JZ r0, " + no)
    genExpr(g, n.b)
    emit(g, "JMP " + end)
    place(g, no)
    genExpr(g, n.c)
    place(g, end)
  } else {
    fail(n.file, n.line, n.col, "internal: cannot generate " + k)
  }
}

function genArrayLit(g: Gen, n: Node): void {
  loadNum(g, "r1", n.list.length)
  emit(g, "CALL __arr_new_n")
  push(g)
  let i = 0
  while (i < n.list.length) {
    genExpr(g, n.list[i])
    emit(g, "LD64 r1, [sp]")
    emit(g, "LD64 r1, [r1+16]")
    emit(g, "ST64 [r1+" + i * 8 + "], r0")
    i++
  }
  pop(g, "r0")
}

function genObjectLit(g: Gen, n: Node): void {
  const size = n.ty.fnames.length * 8
  emit(g, "LI r1, " + size)
  emit(g, "CALL __alloc_raw")
  push(g)
  let i = 0
  while (i < n.list.length) {
    genExpr(g, n.list[i].a)
    emit(g, "LD64 r1, [sp]")
    emit(g, "ST64 [r1+" + n.list[i].slot * 8 + "], r0")
    i++
  }
  pop(g, "r0")
}

// Leaves the address of the element in r0 and stops if the index is out of range.
function genIndexAddr(g: Gen, n: Node): void {
  genExpr(g, n.a)
  push(g)
  genExpr(g, n.b)
  emit(g, "FTRUNC r1, r0")
  emit(g, "F2I r1, r1")
  pop(g, "r0")
  emit(g, "LD64 r2, [r0]")
  const okl = lab(g, "ok")
  emit(g, "BLTU r1, r2, " + okl)
  emit(g, "CALL __index_fault")
  place(g, okl)
  emit(g, "LD64 r0, [r0+16]")
  emit(g, "SHLI r1, r1, 3")
  emit(g, "ADD r0, r0, r1")
}

function genMember(g: Gen, n: Node): void {
  genExpr(g, n.a)
  if (n.tag === "length") {
    if (n.a.ty.kind === "string") emit(g, "LD64 r0, [r0]")
    else emit(g, "LD64 r0, [r0]")
    emit(g, "I2F r0, r0")
  } else {
    emit(g, "LD64 r0, [r0+" + n.slot * 8 + "]")
  }
}

function genUnary(g: Gen, n: Node): void {
  genExpr(g, n.a)
  if (n.text === "!") emit(g, "LNOT r0, r0")
  else if (n.text === "-") emit(g, "FNEG r0, r0")
}

// Address of an assignable place in r0, with the value of an element or field read through it.
function genAddr(g: Gen, n: Node): void {
  if (n.kind === "id") {
    if (n.slot >= 0) emit(g, "ADDI r0, fp, " + slotOff(n.slot))
    else emit(g, "LI r0, " + n.tag)
  } else if (n.kind === "index") {
    genIndexAddr(g, n)
  } else {
    genExpr(g, n.a)
    emit(g, "ADDI r0, r0, " + n.slot * 8)
  }
}

function genUpdate(g: Gen, n: Node): void {
  genAddr(g, n.a)
  emit(g, "MOV r3, r0")
  emit(g, "LD64 r0, [r3]")
  loadNum(g, "r2", 1)
  if (n.text === "++") emit(g, "FADD r1, r0, r2")
  else emit(g, "FSUB r1, r0, r2")
  emit(g, "ST64 [r3], r1")
  if (n.num === 1) emit(g, "MOV r0, r1")
}

function genAssign(g: Gen, n: Node): void {
  const target = n.a
  if (n.text === "=") {
    if (target.kind === "id" && target.slot >= 0) {
      genExpr(g, n.b)
      emit(g, "ST64 [fp" + slotOff(target.slot) + "], r0")
      return
    }
    genAddr(g, target)
    push(g)
    genExpr(g, n.b)
    pop(g, "r1")
    emit(g, "ST64 [r1], r0")
    return
  }
  // compound: the address waits on the stack, the old value is read through it
  genAddr(g, target)
  push(g)
  if (n.tag === "concat") {
    emit(g, "LD64 r1, [r0]")
    convertToStringKeep(g, n.a.ty, "r1")
    emit(g, "PUSH r0")
    genExpr(g, n.b)
    convertValueToString(g, n.b.ty)
    emit(g, "MOV r2, r0")
    pop(g, "r1")
    emit(g, "CALL __str_concat")
  } else {
    genExpr(g, n.b)
    emit(g, "MOV r2, r0")
    emit(g, "LD64 r3, [sp]")
    emit(g, "LD64 r1, [r3]")
    const op = n.text
    if (op === "+=") emit(g, "FADD r0, r1, r2")
    else if (op === "-=") emit(g, "FSUB r0, r1, r2")
    else if (op === "*=") emit(g, "FMUL r0, r1, r2")
    else if (op === "/=") emit(g, "FDIV r0, r1, r2")
    else emit(g, "FMOD r0, r1, r2")
  }
  pop(g, "r3")
  emit(g, "ST64 [r3], r0")
}

// The string is already in `reg`, so only copy it to r0.
function convertToStringKeep(g: Gen, t: Type, reg: string): void {
  emit(g, "MOV r0, " + reg)
}

// The value in r0, of type t, becomes a string in r0.
function convertValueToString(g: Gen, t: Type): void {
  if (t.kind === "string") return
  emit(g, "MOV r1, r0")
  if (t.kind === "number") emit(g, "CALL __num_str")
  else emit(g, "CALL __bool_str")
}

function genBinary(g: Gen, n: Node): void {
  const op = n.text
  genExpr(g, n.a)
  if (n.tag === "concat") {
    convertValueToString(g, n.a.ty)
    push(g)
    genExpr(g, n.b)
    convertValueToString(g, n.b.ty)
    emit(g, "MOV r2, r0")
    pop(g, "r1")
    emit(g, "CALL __str_concat")
    return
  }
  push(g)
  genExpr(g, n.b)
  emit(g, "MOV r2, r0")
  pop(g, "r1")
  if (n.tag === "str") {
    if (op === "===" || op === "==") {
      emit(g, "CALL __str_eq")
    } else if (op === "!==" || op === "!=") {
      emit(g, "CALL __str_eq")
      emit(g, "LNOT r0, r0")
    } else {
      emit(g, "CALL __str_cmp")
      emit(g, "MOV r1, r0")
      if (op === "<") emit(g, "LTI r0, r1, 0")
      else if (op === "<=") emit(g, "LEI r0, r1, 0")
      else if (op === ">") emit(g, "GTI r0, r1, 0")
      else emit(g, "GEI r0, r1, 0")
    }
    return
  }
  if (op === "+") emit(g, "FADD r0, r1, r2")
  else if (op === "-") emit(g, "FSUB r0, r1, r2")
  else if (op === "*") emit(g, "FMUL r0, r1, r2")
  else if (op === "/") emit(g, "FDIV r0, r1, r2")
  else if (op === "%") emit(g, "FMOD r0, r1, r2")
  else if (op === "<") emit(g, "FLT r0, r1, r2")
  else if (op === "<=") emit(g, "FLE r0, r1, r2")
  else if (op === ">") emit(g, "FLT r0, r2, r1")
  else if (op === ">=") emit(g, "FLE r0, r2, r1")
  else if (op === "===" || op === "==") {
    if (n.tag === "num") emit(g, "FEQ r0, r1, r2")
    else emit(g, "EQ r0, r1, r2")
  } else if (op === "!==" || op === "!=") {
    if (n.tag === "num") emit(g, "FNE r0, r1, r2")
    else emit(g, "NE r0, r1, r2")
  } else {
    fail(n.file, n.line, n.col, "internal: operator " + op)
  }
}

function genLogical(g: Gen, n: Node): void {
  const end = lab(g, "end")
  genExpr(g, n.a)
  if (n.text === "&&") emit(g, "JZ r0, " + end)
  else emit(g, "JNZ r0, " + end)
  genExpr(g, n.b)
  place(g, end)
}

function genCall(g: Gen, n: Node): void {
  if (n.tag === "builtin") {
    genBuiltin(g, n)
    return
  }
  if (n.tag === "intrinsic") {
    genIntrinsic(g, n)
    return
  }
  const args: Node[] = []
  if (n.tag === "method") args.push(n.a.a)
  let i = 0
  while (i < n.list.length) {
    args.push(n.list[i])
    i++
  }
  i = 0
  while (i < args.length) {
    genExpr(g, args[i])
    push(g)
    i++
  }
  i = args.length
  while (i > 0) {
    i--
    pop(g, "r" + (i + 1))
  }
  if (n.tag === "method") genMethodCall(g, n)
  else emit(g, "CALL " + n.text)
}

// Array methods work on 8-byte slots whatever the element type, so they share code.
function genMethodCall(g: Gen, n: Node): void {
  const name = n.text
  if (name === "__arr_push") emit(g, "CALL __arr_push")
  else if (name === "__arr_pop") emit(g, "CALL __arr_pop")
  else emit(g, "CALL " + name)
}

function genBuiltin(g: Gen, n: Node): void {
  const name = n.text
  if (name === "console.log" || name === "console.error") {
    const fd = name === "console.log" ? 1 : 2
    let i = 0
    while (i < n.list.length) {
      if (i > 0) {
        loadNum(g, "r1", fd)
        emit(g, "LI r2, s_space")
        emit(g, "CALL __print")
      }
      genExpr(g, n.list[i])
      emit(g, "MOV r2, r0")
      loadNum(g, "r1", fd)
      const t = n.list[i].ty
      if (t.kind === "string") emit(g, "CALL __print")
      else if (t.kind === "number") emit(g, "CALL __log_num")
      else emit(g, "CALL __log_bool")
      i++
    }
    loadNum(g, "r1", fd)
    emit(g, "LI r2, s_nl")
    emit(g, "CALL __print")
    return
  }
  if (name === "String.fromCharCode") {
    genExpr(g, n.list[0])
    emit(g, "MOV r1, r0")
    emit(g, "CALL __str_fromCharCode")
    return
  }
  if (name === "Math.min" || name === "Math.max") {
    genExpr(g, n.list[0])
    push(g)
    genExpr(g, n.list[1])
    emit(g, "MOV r2, r0")
    pop(g, "r1")
    emit(g, "CALL " + (name === "Math.min" ? "__math_min" : "__math_max"))
    return
  }
  genExpr(g, n.list[0])
  if (name === "Number") {
    emit(g, "MOV r1, r0")
    emit(g, "CALL __str_num")
    return
  }
  if (name === "Math.floor") emit(g, "FFLOOR r0, r0")
  else if (name === "Math.ceil") emit(g, "FCEIL r0, r0")
  else if (name === "Math.trunc") emit(g, "FTRUNC r0, r0")
  else if (name === "Math.abs") emit(g, "FABS r0, r0")
  else if (name === "Math.sqrt") emit(g, "FSQRT r0, r0")
}

// Intrinsics. Number arguments arrive as doubles and are converted to integers just before
// the instruction (F2I). A number result is converted back (I2F). Each row says how.
//   args:   which arguments stay doubles instead of being converted (a bit per argument)
//   result: "i" integer result becomes a double, "d" result is already a double, "" no result
function genIntrinsic(g: Gen, n: Node): void {
  const name = n.text
  let keepDouble = 0
  if (name === "__fmtnum") keepDouble = 2
  let i = 0
  while (i < n.list.length) {
    genExpr(g, n.list[i])
    const isNum = n.list[i].ty.kind === "number"
    const keep = i === 1 && keepDouble === 2
    if (isNum && !keep) emit(g, "F2I r0, r0")
    push(g)
    i++
  }
  i = n.list.length
  while (i > 0) {
    i--
    pop(g, "r" + (i + 1))
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
  else if (name === "__sti" || name === "__stp") {
    emit(g, "ST64 [r1], r2")
    result = ""
  } else if (name === "__stf") {
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
    genExpr(g, n.a)
    if (n.slot >= 0) emit(g, "ST64 [fp" + slotOff(n.slot) + "], r0")
    else {
      emit(g, "LI r1, " + n.tag)
      emit(g, "ST64 [r1], r0")
    }
  } else if (k === "expr") {
    genExpr(g, n.a)
  } else if (k === "if") {
    const no = lab(g, "else")
    const end = lab(g, "end")
    genExpr(g, n.a)
    emit(g, "JZ r0, " + no)
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
    const top = lab(g, "while")
    const end = lab(g, "wend")
    g.loops.push(top + " " + end)
    place(g, top)
    genExpr(g, n.a)
    emit(g, "JZ r0, " + end)
    genStmt(g, n.b)
    emit(g, "JMP " + top)
    place(g, end)
    g.loops.pop()
  } else if (k === "for") {
    const top = lab(g, "for")
    const cont = lab(g, "fcont")
    const end = lab(g, "fend")
    if (n.a !== NIL) genStmt(g, n.a)
    g.loops.push(cont + " " + end)
    place(g, top)
    if (n.b !== NIL) {
      genExpr(g, n.b)
      emit(g, "JZ r0, " + end)
    }
    genStmt(g, n.d)
    place(g, cont)
    if (n.c !== NIL) genExpr(g, n.c)
    emit(g, "JMP " + top)
    place(g, end)
    g.loops.pop()
  } else if (k === "return") {
    if (n.a !== NIL) genExpr(g, n.a)
    emit(g, "JMP " + g.fname + "_ret")
  } else if (k === "break" || k === "continue") {
    const top = g.loops[g.loops.length - 1]
    const at = top.indexOf(" ")
    emit(g, "JMP " + (k === "break" ? top.slice(at + 1, top.length) : top.slice(0, at)))
  }
}

function genFunc(g: Gen, f: FuncInfo): void {
  g.fname = f.label
  g.fret = f.ret
  g.out.push(".file \"" + f.node.file + "\"")
  g.out.push(".func " + f.label)
  place(g, f.label)
  g.line = -1
  setLine(g, f.node)
  emit(g, "PUSH fp")
  emit(g, "MOV fp, sp")
  if (f.nslots > 0) emit(g, "ADDI sp, sp, " + (-8 * f.nslots))
  let i = 0
  while (i < f.node.list.length) {
    emit(g, "ST64 [fp" + slotOff(f.node.list[i].slot) + "], r" + (i + 1))
    i++
  }
  genStmt(g, f.node.a)
  place(g, f.label + "_ret")
  emit(g, "MOV sp, fp")
  emit(g, "POP fp")
  emit(g, "RET")
  g.out.push(".endfunc")
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
  const g: Gen = { out: [], label: 0, loops: [], fname: "", fret: prog.funcs[0].ret, prog: prog, file: entryFile, line: 0 }
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
  g.out.push(".file \"" + entryFile + "\"")
  g.out.push(".func __start")
  place(g, "__start")
  emit(g, "MOV fp, sp")
  if (prog.topSlots > 0) emit(g, "ADDI sp, sp, " + (-8 * prog.topSlots))
  g.fname = "__start"
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

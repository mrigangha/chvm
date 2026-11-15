import { NIL, NOTYPE, mkNode, mkType } from "./ast.ts"
import type { Node, Type } from "./ast.ts"
import { fail } from "./diag.ts"
import { T_NUM, T_STR, T_BOOL, T_VOID, T_ANY, arrayOf, typeStr, typeEq, assignable, INTRINSICS, findIntrinsic } from "./types.ts"
import { newMap, mapFind, mapSet, startsWith } from "./util.ts"
import type { IndexMap } from "./util.ts"

// What the checker records, read by the code generator.
//   id        slot: >= 0 a local slot, -1 a global (tag = its label), -2 a function (tag = label)
//   member    tag: "length" "field" "method"   slot: field index
//   call      tag: "func" "intrinsic" "method" "builtin"   text: label or name
//   func      slot: number of local slots
// Each function body is checked once all signatures are known.

export interface Sym {
  name: string
  ty: Type
  isConst: boolean
  slot: number      // local slot, or -1 for a global
  label: string     // global label
  uses: number      // how often the variable is read or written, weighted by loop depth
  inFunc: boolean   // a global that some function body uses, so it must stay in memory
  lo: number        // the variable is alive from tick lo (its declaration) to tick hi (the end of its block)
  hi: number
  known: boolean    // a const number set from a literal: every read can use the value directly
  value: number
}

export interface FuncInfo {
  name: string
  node: Node
  params: Type[]
  ret: Type
  label: string
  nslots: number
  syms: Sym[]       // every local and parameter, in slot order
  calls: number     // calls made from the body, including runtime helper calls
  usesCalls: boolean
  inl: Node         // the returned expression when the function can be inlined, else NIL
}

export interface Program {
  funcs: FuncInfo[]
  globals: Sym[]
  ifaces: Type[]
  top: Node[]          // top-level statements in order, run by the start function
  topSlots: number
  strings: string[]
  start: FuncInfo      // the top-level code
}

export const NOSYM: Sym = { name: "", ty: NOTYPE, isConst: false, slot: -9, label: "", uses: 0, inFunc: false, lo: 0, hi: 0, known: false, value: 0 }

interface Scope {
  names: string[]
  syms: Sym[]
}

interface Ctx {
  prog: Program
  funcIndex: IndexMap
  ifaceIndex: IndexMap
  globalIndex: IndexMap
  scopes: Scope[]
  cur: FuncInfo
  nslots: number
  loopDepth: number
  inFunc: boolean
  strIndex: IndexMap
  syms: Sym[]       // locals of the function being checked
  tick: number      // counts declarations and block ends, to order variable lifetimes
}

function err(n: Node, msg: string): void {
  fail(n.file, n.line, n.col, msg)
}

// ---- types ----

function resolveType(c: Ctx, t: Type, at: Node): Type {
  if (t.kind === "array") {
    const e = resolveType(c, t.elem, at)
    if (e.kind === "void") err(at, "an array of void is not allowed")
    return arrayOf(e)
  }
  if (t.kind === "number") return T_NUM
  if (t.kind === "string") return T_STR
  if (t.kind === "boolean") return T_BOOL
  if (t.kind === "void") return T_VOID
  if (t.kind === "any") return T_ANY
  if (t.kind === "name") {
    const i = mapFind(c.ifaceIndex, t.name)
    if (i < 0) err(at, "unknown type '" + t.name + "'")
    return c.prog.ifaces[i]
  }
  return t
}

// ---- scopes ----

function pushScope(c: Ctx): void {
  c.scopes.push({ names: [], syms: [] })
}

// Leaving a block ends the life of everything declared in it.
function popScope(c: Ctx): void {
  const s = c.scopes[c.scopes.length - 1]
  let i = 0
  while (i < s.syms.length) {
    s.syms[i].hi = c.tick
    i++
  }
  c.tick++
  c.scopes.pop()
}

function lookup(c: Ctx, name: string): Sym {
  let i = c.scopes.length - 1
  while (i >= 0) {
    const s = c.scopes[i]
    let j = s.names.length - 1
    while (j >= 0) {
      if (s.names[j] === name) return s.syms[j]
      j--
    }
    i--
  }
  const g = mapFind(c.globalIndex, name)
  if (g >= 0) return c.prog.globals[g]
  return NOSYM
}

function declareLocal(c: Ctx, n: Node, name: string, ty: Type, isConst: boolean): Sym {
  const top = c.scopes[c.scopes.length - 1]
  let j = 0
  while (j < top.names.length) {
    if (top.names[j] === name) err(n, "'" + name + "' is already declared in this block")
    j++
  }
  const s: Sym = { name: name, ty: ty, isConst: isConst, slot: c.nslots, label: "", uses: 0, inFunc: false, lo: c.tick, hi: 0, known: false, value: 0 }
  c.tick++
  c.syms.push(s)
  c.nslots++
  top.names.push(name)
  top.syms.push(s)
  return s
}

function newTemp(c: Ctx): number {
  const s = c.nslots
  c.nslots++
  return s
}

function internStr(c: Ctx, s: string): number {
  const i = mapFind(c.strIndex, s)
  if (i >= 0) return i
  c.prog.strings.push(s)
  mapSet(c.strIndex, s, c.prog.strings.length - 1)
  return c.prog.strings.length - 1
}

// ---- expressions ----

function isLvalue(n: Node): boolean {
  return n.kind === "id" || n.kind === "index" || n.kind === "member"
}

function need(n: Node, t: Type, want: Type, what: string): void {
  if (!assignable(want, t)) err(n, what + " must be " + typeStr(want) + " but is " + typeStr(t))
}

function checkExpr(c: Ctx, n: Node, hint: Type): Type {
  const t = checkExprInner(c, n, hint)
  n.ty = t
  return t
}

function checkExprInner(c: Ctx, n: Node, hint: Type): Type {
  const k = n.kind
  if (k === "num") return T_NUM
  if (k === "str") {
    n.slot = internStr(c, n.text)
    return T_STR
  }
  if (k === "true" || k === "false") return T_BOOL
  if (k === "id") return checkId(c, n)
  if (k === "array") return checkArrayLit(c, n, hint)
  if (k === "object") return checkObjectLit(c, n, hint)
  if (k === "index") {
    const at = checkExpr(c, n.a, NOTYPE)
    const it = checkExpr(c, n.b, NOTYPE)
    need(n.b, it, T_NUM, "an index")
    if (at.kind === "string") err(n, "read a character with charCodeAt(i) or slice(i, i + 1)")
    if (at.kind !== "array") err(n, "only arrays can be indexed, this is " + typeStr(at))
    return at.elem
  }
  if (k === "member") return checkMember(c, n)
  if (k === "call") return checkCall(c, n)
  if (k === "unary") {
    const t = checkExpr(c, n.a, NOTYPE)
    if (n.text === "!") {
      need(n.a, t, T_BOOL, "the operand of '!'")
      return T_BOOL
    }
    need(n.a, t, T_NUM, "the operand of '" + n.text + "'")
    return T_NUM
  }
  if (k === "update") {
    if (n.a.kind === "id") checkAssignable(c, n.a)
    const t = checkExpr(c, n.a, NOTYPE)
    need(n.a, t, T_NUM, "the operand of '" + n.text + "'")
    checkAssignable(c, n.a)
    return T_NUM
  }
  if (k === "binary") return checkBinary(c, n)
  if (k === "logical") {
    const l = checkExpr(c, n.a, NOTYPE)
    const r = checkExpr(c, n.b, NOTYPE)
    need(n.a, l, T_BOOL, "the left side of '" + n.text + "'")
    need(n.b, r, T_BOOL, "the right side of '" + n.text + "'")
    return T_BOOL
  }
  if (k === "assign") return checkAssign(c, n)
  if (k === "cond") {
    const ct = checkExpr(c, n.a, NOTYPE)
    need(n.a, ct, T_BOOL, "the condition")
    const bt = checkExpr(c, n.b, hint)
    const et = checkExpr(c, n.c, bt.kind === "none" ? hint : bt)
    if (!typeEq(bt, et) && bt.kind !== "any" && et.kind !== "any") {
      err(n, "the two branches have different types: " + typeStr(bt) + " and " + typeStr(et))
    }
    return bt
  }
  err(n, "unexpected " + k)
  return NOTYPE
}

function loopWeight(c: Ctx): number {
  let w = 1
  let d = c.loopDepth
  while (d > 0 && w < 1000) {
    w = w * 8
    d--
  }
  return w
}

function checkId(c: Ctx, n: Node): Type {
  const s = lookup(c, n.text)
  if (s !== NOSYM && s.known) {
    // a const number set from a literal: a read of it is the literal, so it needs no register
    n.kind = "num"
    n.num = s.value
    n.text = "" + s.value
    n.slot = 0
    return T_NUM
  }
  if (s !== NOSYM) {
    s.uses = s.uses + loopWeight(c)
    if (s.slot < 0 && c.inFunc) s.inFunc = true
    if (s.ty.kind === "none") err(n, "'" + n.text + "' is used before its type is known: write the type where it is declared, as in 'let " + n.text + ": number = ...'")
    n.slot = s.slot
    n.tag = s.slot < 0 ? s.label : ""
    return s.ty
  }
  if (mapFind(c.funcIndex, n.text) >= 0) err(n, "functions can only be called, not used as values")
  err(n, "unknown name '" + n.text + "'")
  return NOTYPE
}

function checkArrayLit(c: Ctx, n: Node, hint: Type): Type {
  c.cur.calls++
  let elem = NOTYPE
  if (hint.kind === "array") elem = hint.elem
  if (n.list.length === 0) {
    if (elem.kind === "none") err(n, "an empty array needs a type, write 'let a: number[] = []'")
    return arrayOf(elem)
  }
  let i = 0
  while (i < n.list.length) {
    const t = checkExpr(c, n.list[i], elem)
    if (elem.kind === "none") elem = t
    else if (!assignable(elem, t)) err(n.list[i], "this element is " + typeStr(t) + " but the array holds " + typeStr(elem))
    if (t.kind === "void") err(n.list[i], "a void value cannot be stored")
    i++
  }
  return arrayOf(elem)
}

function ifaceField(t: Type, name: string): number {
  let i = 0
  while (i < t.fnames.length) {
    if (t.fnames[i] === name) return i
    i++
  }
  return -1
}

function checkObjectLit(c: Ctx, n: Node, hint: Type): Type {
  if (hint.kind !== "iface") err(n, "an object literal needs a known interface type, write 'let p: Point = { ... }'")
  c.cur.calls++
  const seen: boolean[] = []
  let i = 0
  while (i < hint.fnames.length) {
    seen.push(false)
    i++
  }
  i = 0
  while (i < n.list.length) {
    const f = n.list[i]
    const fi = ifaceField(hint, f.text)
    if (fi < 0) err(f, "'" + hint.name + "' has no field '" + f.text + "'")
    if (seen[fi]) err(f, "field '" + f.text + "' is given twice")
    seen[fi] = true
    f.slot = fi
    const t = checkExpr(c, f.a, hint.ftypes[fi])
    if (!assignable(hint.ftypes[fi], t)) err(f.a, "field '" + f.text + "' is " + typeStr(hint.ftypes[fi]) + " but this is " + typeStr(t))
    i++
  }
  i = 0
  while (i < hint.fnames.length) {
    if (!seen[i]) err(n, "field '" + hint.fnames[i] + "' is missing")
    i++
  }
  return hint
}

function checkMember(c: Ctx, n: Node): Type {
  if (n.a.kind === "id" && (n.a.text === "Math" || n.a.text === "String" || n.a.text === "console" || n.a.text === "Number")) {
    err(n, "'" + n.a.text + "." + n.text + "' must be called")
  }
  const t = checkExpr(c, n.a, NOTYPE)
  if (n.text === "length" && (t.kind === "string" || t.kind === "array")) {
    n.tag = "length"
    return T_NUM
  }
  if (t.kind === "iface") {
    const fi = ifaceField(t, n.text)
    if (fi < 0) err(n, "'" + t.name + "' has no field '" + n.text + "'")
    n.tag = "field"
    n.slot = fi
    return t.ftypes[fi]
  }
  err(n, "'" + typeStr(t) + "' has no field '" + n.text + "'")
  return NOTYPE
}

function checkAssignable(c: Ctx, n: Node): void {
  if (n.kind === "id") {
    const s = lookup(c, n.text)
    if (s !== NOSYM && s.isConst) err(n, "'" + n.text + "' is a constant and cannot be assigned")
  } else if (n.kind === "member") {
    if (n.tag === "length") err(n, "'length' cannot be assigned")
  }
}

function checkBinary(c: Ctx, n: Node): Type {
  const l = checkExpr(c, n.a, NOTYPE)
  const r = checkExpr(c, n.b, NOTYPE)
  const op = n.text
  if (op === "+") {
    if (l.kind === "string" || r.kind === "string") {
      if (l.kind !== "string" && l.kind !== "number" && l.kind !== "boolean" && l.kind !== "any") err(n.a, "cannot join " + typeStr(l) + " to a string")
      if (r.kind !== "string" && r.kind !== "number" && r.kind !== "boolean" && r.kind !== "any") err(n.b, "cannot join " + typeStr(r) + " to a string")
      n.tag = "concat"
      c.cur.calls++
      return T_STR
    }
    need(n.a, l, T_NUM, "the left side of '+'")
    need(n.b, r, T_NUM, "the right side of '+'")
    return T_NUM
  }
  if (op === "-" || op === "*" || op === "/" || op === "%") {
    need(n.a, l, T_NUM, "the left side of '" + op + "'")
    need(n.b, r, T_NUM, "the right side of '" + op + "'")
    return T_NUM
  }
  if (op === "<" || op === "<=" || op === ">" || op === ">=") {
    if (l.kind === "string" && r.kind === "string") {
      n.tag = "str"
      c.cur.calls++
      return T_BOOL
    }
    need(n.a, l, T_NUM, "the left side of '" + op + "'")
    need(n.b, r, T_NUM, "the right side of '" + op + "'")
    return T_BOOL
  }
  // === !== == !=
  if (!assignable(l, r)) err(n, "cannot compare " + typeStr(l) + " with " + typeStr(r))
  if (l.kind === "void") err(n, "cannot compare void values")
  const kd = l.kind === "any" ? r.kind : l.kind
  n.tag = kd === "string" ? "str" : kd === "number" ? "num" : kd === "boolean" ? "bool" : "ref"
  if (kd === "string") c.cur.calls++
  return T_BOOL
}

function checkAssign(c: Ctx, n: Node): Type {
  if (n.a.kind === "id") checkAssignable(c, n.a)
  const lt = checkExpr(c, n.a, NOTYPE)
  checkAssignable(c, n.a)
  const rt = checkExpr(c, n.b, lt)
  if (n.text === "=") {
    if (!assignable(lt, rt)) err(n.b, "cannot assign " + typeStr(rt) + " to " + typeStr(lt))
    if (rt.kind === "void") err(n.b, "a void value cannot be assigned")
    return lt
  }
  if (n.text === "+=" && lt.kind === "string") {
    if (rt.kind !== "string" && rt.kind !== "number" && rt.kind !== "boolean") err(n.b, "cannot join " + typeStr(rt) + " to a string")
    n.tag = "concat"
    c.cur.calls++
    return lt
  }
  need(n.a, lt, T_NUM, "the target of '" + n.text + "'")
  need(n.b, rt, T_NUM, "the value of '" + n.text + "'")
  return lt
}

function checkArgs(c: Ctx, n: Node, params: Type[], what: string): void {
  if (n.list.length !== params.length) {
    err(n, what + " takes " + params.length + " argument" + (params.length === 1 ? "" : "s") + " but got " + n.list.length)
  }
  let i = 0
  while (i < n.list.length) {
    const t = checkExpr(c, n.list[i], params[i])
    if (!assignable(params[i], t)) err(n.list[i], "argument " + (i + 1) + " must be " + typeStr(params[i]) + " but is " + typeStr(t))
    i++
  }
}

function checkCall(c: Ctx, n: Node): Type {
  const f = n.a
  if (f.kind === "id" && f.text === "Number" && lookup(c, "Number") === NOSYM && mapFind(c.funcIndex, "Number") < 0) {
    checkArgs(c, n, [T_STR], "Number")
    n.tag = "builtin"
    n.text = "Number"
    c.cur.calls++
    return T_NUM
  }
  if (f.kind === "id" && (f.text === "arenaMark" || f.text === "arenaFree") && lookup(c, f.text) === NOSYM && mapFind(c.funcIndex, f.text) < 0) {
    if (f.text === "arenaMark") checkArgs(c, n, [], "arenaMark")
    else checkArgs(c, n, [T_NUM], "arenaFree")
    n.tag = "builtin"
    n.text = f.text
    return f.text === "arenaMark" ? T_NUM : T_VOID
  }
  if (f.kind === "id") {
    const ii = findIntrinsic(f.text)
    if (ii >= 0) {
      if (!isPrelude(n.file)) err(n, "'" + f.text + "' is only available to the runtime")
      checkArgs(c, n, INTRINSICS[ii].params, "'" + f.text + "'")
      n.tag = "intrinsic"
      n.text = f.text
      return INTRINSICS[ii].ret
    }
    const fi = mapFind(c.funcIndex, f.text)
    if (fi < 0) {
      if (lookup(c, f.text) !== NOSYM) err(n, "'" + f.text + "' is not a function")
      err(n, "unknown function '" + f.text + "'")
    }
    const fn = c.prog.funcs[fi]
    checkArgs(c, n, fn.params, "'" + f.text + "'")
    c.cur.calls++
    n.tag = "func"
    n.text = fn.label
    n.slot = fi
    return fn.ret
  }
  if (f.kind === "member") return checkMethod(c, n)
  err(n, "only named functions and methods can be called")
  return NOTYPE
}

function isPrelude(file: string): boolean {
  return file === "prelude.ts" || file === "src/host_chvm.ts" || file === "host_chvm.ts"
}

// slice(a) means slice(a, length). The object expression is checked again for its length, so it
// must not have side effects: the second argument re-reads the same variable or field.
function lenCall(at: Node, obj: Node): Node {
  if (obj.kind !== "id" && obj.kind !== "member") err(at, "slice with one argument needs a variable or a field, write slice(a, x.length)")
  const m = mkNode("member", at.file, at.line, at.col)
  m.a = obj
  m.text = "length"
  return m
}

function checkMethod(c: Ctx, n: Node): Type {
  const f = n.a
  const obj = f.a
  const name = f.text
  if (obj.kind === "id" && lookup(c, obj.text) === NOSYM) {
    const o = obj.text
    if (o === "console" && (name === "log" || name === "error")) {
      let i = 0
      while (i < n.list.length) {
        const t = checkExpr(c, n.list[i], NOTYPE)
        if (t.kind !== "string" && t.kind !== "number" && t.kind !== "boolean") err(n.list[i], "console." + name + " prints a string, a number or a boolean, not " + typeStr(t))
        i++
      }
      n.tag = "builtin"
      n.text = "console." + name
      c.cur.calls++
      return T_VOID
    }
    if (o === "Math") {
      const unary = name === "floor" || name === "ceil" || name === "trunc" || name === "abs" || name === "sqrt"
      if (unary || name === "min" || name === "max") {
        checkArgs(c, n, unary ? [T_NUM] : [T_NUM, T_NUM], "Math." + name)
        n.tag = "builtin"
        n.text = "Math." + name
        if (name === "min" || name === "max") c.cur.calls++
        return T_NUM
      }
      err(f, "Math." + name + " is not supported")
    }
    if (o === "String" && name === "fromCharCode") {
      checkArgs(c, n, [T_NUM], "String.fromCharCode")
      n.tag = "builtin"
      n.text = "String.fromCharCode"
      c.cur.calls++
      return T_STR
    }
    err(f, "unknown name '" + o + "'")
  }
  const t = checkExpr(c, obj, NOTYPE)
  n.tag = "method"
  c.cur.calls++
  f.ty = t
  if (t.kind === "string") {
    if (name === "charCodeAt") { checkArgs(c, n, [T_NUM], "charCodeAt"); n.text = "__str_charCodeAt"; return T_NUM }
    if (name === "slice") {
      if (n.list.length === 1) n.list.push(lenCall(n, f.a))
      checkArgs(c, n, [T_NUM, T_NUM], "slice")
      n.text = "__str_slice"
      return T_STR
    }
    if (name === "indexOf") { checkArgs(c, n, [T_STR], "indexOf"); n.text = "__str_indexOf"; return T_NUM }
    err(f, "strings have no method '" + name + "' in this language")
  }
  if (t.kind === "array") {
    if (name === "push") {
      checkArgs(c, n, [t.elem], "push")
      n.text = "__arr_push"
      return T_VOID
    }
    if (name === "pop") {
      checkArgs(c, n, [], "pop")
      n.text = "__arr_pop"
      return t.elem
    }
    if (name === "slice") {
      if (n.list.length === 1) n.list.push(lenCall(n, f.a))
      checkArgs(c, n, [T_NUM, T_NUM], "slice")
      n.text = "__arr_slice"
      return t
    }
    if (name === "join") {
      if (t.elem.kind !== "string") err(f, "join needs an array of strings")
      checkArgs(c, n, [T_STR], "join")
      n.text = "__arr_join"
      return T_STR
    }
    err(f, "arrays have no method '" + name + "' in this language")
  }
  err(f, "'" + typeStr(t) + "' has no method '" + name + "'")
  return NOTYPE
}

// ---- statements ----

function checkBlockScoped(c: Ctx, n: Node): void {
  pushScope(c)
  checkStmt(c, n)
  popScope(c)
}

function checkStmt(c: Ctx, n: Node): void {
  const k = n.kind
  if (k === "block") {
    pushScope(c)
    let i = 0
    while (i < n.list.length) {
      checkStmt(c, n.list[i])
      i++
    }
    popScope(c)
  } else if (k === "var") {
    checkVar(c, n)
  } else if (k === "expr") {
    const t = checkExpr(c, n.a, NOTYPE)
    if (n.a.kind !== "call" && n.a.kind !== "assign" && n.a.kind !== "update") err(n, "this expression does nothing")
    if (t.kind === "none") err(n, "internal: no type")
  } else if (k === "if") {
    const t = checkExpr(c, n.a, NOTYPE)
    need(n.a, t, T_BOOL, "the condition")
    checkBlockScoped(c, n.b)
    if (n.c !== NIL) checkBlockScoped(c, n.c)
  } else if (k === "while") {
    // the condition runs on every trip, so it counts at the loop's depth
    c.loopDepth++
    const t = checkExpr(c, n.a, NOTYPE)
    need(n.a, t, T_BOOL, "the condition")
    checkBlockScoped(c, n.b)
    c.loopDepth--
  } else if (k === "for") {
    pushScope(c)
    if (n.a !== NIL) checkStmt(c, n.a)
    // the test and the step run on every trip, so they count at the loop's depth
    c.loopDepth++
    if (n.b !== NIL) {
      const t = checkExpr(c, n.b, NOTYPE)
      need(n.b, t, T_BOOL, "the condition")
    }
    if (n.c !== NIL) checkExpr(c, n.c, NOTYPE)
    checkBlockScoped(c, n.d)
    c.loopDepth--
    popScope(c)
  } else if (k === "return") {
    if (!c.inFunc) err(n, "'return' outside a function")
    if (n.a === NIL) {
      if (c.cur.ret.kind !== "void") err(n, "this function must return " + typeStr(c.cur.ret))
    } else {
      if (c.cur.ret.kind === "void") err(n, "this function returns void")
      const t = checkExpr(c, n.a, c.cur.ret)
      if (!assignable(c.cur.ret, t)) err(n.a, "returns " + typeStr(t) + " but the function returns " + typeStr(c.cur.ret))
    }
  } else if (k === "break" || k === "continue") {
    if (c.loopDepth === 0) err(n, "'" + k + "' outside a loop")
  } else if (k === "empty") {
    return
  } else {
    err(n, "unexpected " + k)
  }
}

function checkVar(c: Ctx, n: Node): void {
  let want = NOTYPE
  if (n.ann.kind !== "none") want = resolveType(c, n.ann, n)
  const t = checkExpr(c, n.a, want)
  if (t.kind === "void") err(n.a, "a void value cannot be stored")
  let ty = t
  if (want.kind !== "none") {
    if (!assignable(want, t)) err(n.a, "cannot assign " + typeStr(t) + " to '" + n.text + "' of type " + typeStr(want))
    ty = want
  }
  if (ty.kind === "any" && want.kind === "none") err(n, "'" + n.text + "' needs a type")
  n.ty = ty
  const s = declareLocal(c, n, n.text, ty, n.num === 1)
  n.slot = s.slot
  if (n.num === 1 && ty.kind === "number" && isLiteralNumber(n.a)) {
    s.known = true
    s.value = literalNumber(n.a)
  }
}

// ---- program ----

function newCtx(prog: Program): Ctx {
  const dummy: FuncInfo = { name: "", node: NIL, params: [], ret: T_VOID, label: "", nslots: 0, syms: [], calls: 0, usesCalls: false, inl: NIL }
  return {
    prog: prog, funcIndex: newMap(), ifaceIndex: newMap(), globalIndex: newMap(),
    scopes: [], cur: dummy, nslots: 0, loopDepth: 0, inFunc: false, strIndex: newMap(), syms: [], tick: 0,
  }
}

function labelFor(file: string, name: string): string {
  if (file === "prelude.ts" && startsWith(name, "__")) return name
  return "f_" + name
}

export function check(files: Node[]): Program {
  const dummyStart: FuncInfo = { name: "__start", node: NIL, params: [], ret: T_VOID, label: "__start", nslots: 0, syms: [], calls: 0, usesCalls: false, inl: NIL }
  const prog: Program = { funcs: [], globals: [], ifaces: [], top: [], topSlots: 0, strings: [], start: dummyStart }
  const c = newCtx(prog)

  // pass 1: interfaces, then function signatures, then globals
  let fi = 0
  while (fi < files.length) {
    const items = files[fi].list
    let i = 0
    while (i < items.length) {
      const it = items[i]
      if (it.kind === "iface") {
        if (mapFind(c.ifaceIndex, it.text) >= 0) err(it, "interface '" + it.text + "' is already declared")
        const ty = mkType("iface", it.text, NOTYPE)
        prog.ifaces.push(ty)
        mapSet(c.ifaceIndex, it.text, prog.ifaces.length - 1)
      }
      i++
    }
    fi++
  }
  fi = 0
  while (fi < files.length) {
    const items = files[fi].list
    let i = 0
    while (i < items.length) {
      const it = items[i]
      if (it.kind === "iface") {
        const ty = prog.ifaces[mapFind(c.ifaceIndex, it.text)]
        let j = 0
        while (j < it.list.length) {
          const f = it.list[j]
          let dup = 0
          while (dup < ty.fnames.length) {
            if (ty.fnames[dup] === f.text) err(f, "field '" + f.text + "' is declared twice")
            dup++
          }
          const ft = resolveType(c, f.ann, f)
          if (ft.kind === "void") err(f, "a field cannot be void")
          ty.fnames.push(f.text)
          ty.ftypes.push(ft)
          j++
        }
      }
      i++
    }
    fi++
  }
  fi = 0
  while (fi < files.length) {
    const items = files[fi].list
    let i = 0
    while (i < items.length) {
      const it = items[i]
      if (it.kind === "func") {
        if (mapFind(c.funcIndex, it.text) >= 0) err(it, "function '" + it.text + "' is already declared")
        if (findIntrinsic(it.text) >= 0) err(it, "'" + it.text + "' is the name of an intrinsic")
        const params: Type[] = []
        let j = 0
        while (j < it.list.length) {
          const pt = resolveType(c, it.list[j].ann, it.list[j])
          if (pt.kind === "void") err(it.list[j], "a parameter cannot be void")
          params.push(pt)
          j++
        }
        const info: FuncInfo = { name: it.text, node: it, params: params, ret: resolveType(c, it.ann, it), label: labelFor(it.file, it.text), nslots: 0, syms: [], calls: 0, usesCalls: false, inl: NIL }
        prog.funcs.push(info)
        mapSet(c.funcIndex, it.text, prog.funcs.length - 1)
      }
      i++
    }
    fi++
  }

  // globals: declared before any body is checked
  fi = 0
  while (fi < files.length) {
    const items = files[fi].list
    let i = 0
    while (i < items.length) {
      if (items[i].kind === "var") declareGlobal(c, items[i])
      i++
    }
    fi++
  }

  // pass 2: function bodies
  let k = 0
  while (k < prog.funcs.length) {
    const info = prog.funcs[k]
    c.cur = info
    c.inFunc = true
    c.nslots = 0
    c.syms = []
    c.scopes = []
    pushScope(c)
    let j = 0
    while (j < info.node.list.length) {
      const p = info.node.list[j]
      const s = declareLocal(c, p, p.text, info.params[j], false)
      p.slot = s.slot
      j++
    }
    checkStmt(c, info.node.a)
    if (info.ret.kind !== "void" && !alwaysReturns(info.node.a)) err(info.node, "function '" + info.name + "' must return " + typeStr(info.ret) + " on every path")
    popScope(c)
    info.nslots = c.nslots
    info.node.slot = c.nslots
    info.syms = c.syms
    info.usesCalls = info.calls > 0
    findInlinable(info)
    k++
  }

  // pass 3: top level statements and globals, in file order
  c.inFunc = false
  c.nslots = 0
  c.scopes = []
  const startInfo: FuncInfo = { name: "__start", node: NIL, params: [], ret: T_VOID, label: "__start", nslots: 0, syms: [], calls: 0, usesCalls: false, inl: NIL }
  c.cur = startInfo
  c.syms = []
  pushScope(c)
  fi = 0
  while (fi < files.length) {
    const items = files[fi].list
    let i = 0
    while (i < items.length) {
      const it = items[i]
      if (it.kind === "var") {
        checkTopVar(c, it)
        prog.top.push(it)
      } else if (it.kind !== "func" && it.kind !== "iface" && it.kind !== "import") {
        checkStmt(c, it)
        prog.top.push(it)
      }
      i++
    }
    fi++
  }
  popScope(c)
  prog.topSlots = c.nslots
  startInfo.syms = c.syms
  startInfo.nslots = c.nslots
  startInfo.usesCalls = true
  prog.start = startInfo

  // every body is checked now, so calls can be replaced by the functions' bodies
  let q = 0
  while (q < prog.funcs.length) {
    inlineTree(prog, prog.funcs[q].node.a)
    q++
  }
  q = 0
  while (q < prog.top.length) {
    inlineTree(prog, prog.top[q])
    q++
  }
  return prog
}

// A top-level variable is a global. Its type comes from the annotation, or from the value
// when the value is a literal. Anything else is inferred later, in file order, but a function
// can only use such a global if the global has a written type or a literal value.
function literalType(n: Node): Type {
  if (n.kind === "num") return T_NUM
  if (n.kind === "unary" && n.text === "-" && n.a.kind === "num") return T_NUM
  if (n.kind === "str") return T_STR
  if (n.kind === "true" || n.kind === "false") return T_BOOL
  return NOTYPE
}

// Registers the global. A global with no written type and no literal value is registered
// with the type "none": a function body that uses it is an error, and the top-level
// statement that declares it fills the type in.
// The value of an initialiser that is a plain number: 5, 1e3, -7. Returns false in ok when it is anything else.
function literalNumber(n: Node): number {
  if (n.kind === "num") return n.num
  if (n.kind === "unary" && n.text === "-" && n.a.kind === "num") return -n.a.num
  return 0
}

function isLiteralNumber(n: Node): boolean {
  return n.kind === "num" || (n.kind === "unary" && n.text === "-" && n.a.kind === "num")
}

function declareGlobal(c: Ctx, n: Node): void {
  let ty = NOTYPE
  if (n.ann.kind !== "none") ty = resolveType(c, n.ann, n)
  else ty = literalType(n.a)
  if (mapFind(c.globalIndex, n.text) >= 0) err(n, "'" + n.text + "' is already declared")
  const g: Sym = { name: n.text, ty: ty, isConst: n.num === 1, slot: -1, label: "g_" + n.text, uses: 0, inFunc: false, lo: 0, hi: 0, known: false, value: 0 }
  if (n.num === 1 && ty.kind === "number" && isLiteralNumber(n.a)) {
    g.known = true
    g.value = literalNumber(n.a)
  }
  c.prog.globals.push(g)
  mapSet(c.globalIndex, n.text, c.prog.globals.length - 1)
  n.ty = ty
  n.slot = -1
  n.tag = g.label
}

function checkTopVar(c: Ctx, n: Node): void {
  const g = c.prog.globals[mapFind(c.globalIndex, n.text)]
  const t = checkExpr(c, n.a, g.ty)
  if (t.kind === "void") err(n.a, "a void value cannot be stored")
  if (g.ty.kind === "none") {
    if (t.kind === "any") err(n, "'" + n.text + "' needs a type")
    g.ty = t
    n.ty = t
  } else if (!assignable(g.ty, t)) {
    err(n.a, "cannot assign " + typeStr(t) + " to '" + n.text + "' of type " + typeStr(g.ty))
  }
  // No function body uses this variable, so it is an ordinary local of the top-level code and can
  // live in a register. Function bodies were all checked before this point, so inFunc is final.
  // The one thing this changes is a use before the declaration, which JavaScript rejects anyway.
  if (!g.inFunc) {
    const s = declareLocal(c, n, n.text, g.ty, g.isConst)
    n.slot = s.slot
    n.tag = ""
    s.known = g.known
    s.value = g.value
  }
}

// ---- inlining ----
//
// A call is replaced by the callee's returned expression, with each parameter replaced by the
// argument, when that cannot change what the program does:
//   - the callee is one `return EXPR` and EXPR is pure: arithmetic, comparisons, && || ! ?:, reads of
//     fields and elements, a few Math builtins. No calls, no assignments, no allocation.
//   - every parameter is used at least once, so an argument that could fault is never dropped.
//   - a parameter used more than once, or used only on a conditional path (right side of && ||, a branch
//     of ?:), gets an argument that is a variable or a constant. Otherwise an argument could be run twice,
//     or skipped, and a fault or its cost would change.
//   - every argument is pure, so evaluating it later, inside the body, changes nothing.
// A fault inside an inlined body is reported in the caller, not in the callee.

function nodeCount(n: Node): number {
  if (n === NIL) return 0
  let total = 1 + nodeCount(n.a) + nodeCount(n.b) + nodeCount(n.c) + nodeCount(n.d)
  let i = 0
  while (i < n.list.length) {
    total = total + nodeCount(n.list[i])
    i++
  }
  return total
}

function pureBuiltin(text: string): boolean {
  return text === "Math.floor" || text === "Math.ceil" || text === "Math.trunc" || text === "Math.abs" || text === "Math.sqrt"
}

// No calls except cheap builtins, no assignment or update, no allocation, no string building.
function pureExpr(n: Node): boolean {
  const k = n.kind
  if (k === "num" || k === "true" || k === "false" || k === "str" || k === "id") return true
  if (k === "unary") return pureExpr(n.a)
  if (k === "binary") return n.tag !== "concat" && n.tag !== "str" && pureExpr(n.a) && pureExpr(n.b)
  if (k === "logical") return pureExpr(n.a) && pureExpr(n.b)
  if (k === "cond") return pureExpr(n.a) && pureExpr(n.b) && pureExpr(n.c)
  if (k === "member") return pureExpr(n.a)
  if (k === "index") return pureExpr(n.a) && pureExpr(n.b)
  if (k === "call") {
    if (n.tag !== "builtin" || !pureBuiltin(n.text)) return false
    let i = 0
    while (i < n.list.length) {
      if (!pureExpr(n.list[i])) return false
      i++
    }
    return true
  }
  return false
}

function cheapArg(n: Node): boolean {
  return n.kind === "num" || n.kind === "true" || n.kind === "false" || n.kind === "str" || n.kind === "id"
}

// How many times parameter `slot` is read in n. A read on a conditional path adds 100 so it never counts as "once".
function paramUses(n: Node, slot: number, conditional: boolean): number {
  if (n === NIL) return 0
  if (n.kind === "id" && n.slot === slot) return conditional ? 100 : 1
  if (n.kind === "logical") return paramUses(n.a, slot, conditional) + paramUses(n.b, slot, true)
  if (n.kind === "cond") return paramUses(n.a, slot, conditional) + paramUses(n.b, slot, true) + paramUses(n.c, slot, true)
  let total = paramUses(n.a, slot, conditional) + paramUses(n.b, slot, conditional) + paramUses(n.c, slot, conditional) + paramUses(n.d, slot, conditional)
  let i = 0
  while (i < n.list.length) {
    total = total + paramUses(n.list[i], slot, conditional)
    i++
  }
  return total
}

function copyTree(n: Node): Node {
  if (n === NIL) return NIL
  const out = mkNode(n.kind, n.file, n.line, n.col)
  out.text = n.text
  out.num = n.num
  out.ann = n.ann
  out.ty = n.ty
  out.slot = n.slot
  out.tag = n.tag
  out.reg = n.reg
  out.a = copyTree(n.a)
  out.b = copyTree(n.b)
  out.c = copyTree(n.c)
  out.d = copyTree(n.d)
  let i = 0
  while (i < n.list.length) {
    out.list.push(copyTree(n.list[i]))
    i++
  }
  return out
}

// The body with each parameter read replaced by a copy of its argument.
function substitute(n: Node, args: Node[]): Node {
  if (n === NIL) return NIL
  if (n.kind === "id" && n.slot >= 0 && n.slot < args.length) return copyTree(args[n.slot])
  const out = mkNode(n.kind, n.file, n.line, n.col)
  out.text = n.text
  out.num = n.num
  out.ann = n.ann
  out.ty = n.ty
  out.slot = n.slot
  out.tag = n.tag
  out.reg = n.reg
  out.a = substitute(n.a, args)
  out.b = substitute(n.b, args)
  out.c = substitute(n.c, args)
  out.d = substitute(n.d, args)
  let i = 0
  while (i < n.list.length) {
    out.list.push(substitute(n.list[i], args))
    i++
  }
  return out
}

// Decides, once the body is checked, whether the function can be inlined at all.
function findInlinable(info: FuncInfo): void {
  info.inl = NIL
  const body = info.node.a
  if (body.kind !== "block" || body.list.length !== 1) return
  const st = body.list[0]
  if (st.kind !== "return" || st.a === NIL) return
  if (info.ret.kind === "void" || info.ret.kind === "any") return
  let i = 0
  while (i < info.params.length) {
    if (info.params[i].kind === "any") return
    i++
  }
  if (nodeCount(st.a) > 24 || !pureExpr(st.a)) return
  i = 0
  while (i < info.params.length) {
    if (paramUses(st.a, i, false) === 0) return
    i++
  }
  info.inl = st.a
}

// Can this particular call be replaced? The arguments must suit how each parameter is used.
function canInline(info: FuncInfo, call: Node): boolean {
  if (info.inl === NIL || call.list.length !== info.params.length) return false
  let i = 0
  while (i < call.list.length) {
    const arg = call.list[i]
    if (!pureExpr(arg)) return false
    if (paramUses(info.inl, i, false) !== 1 && !cheapArg(arg)) return false
    i++
  }
  return true
}

// Rewrites calls in the tree, innermost first, so an argument that was itself a call can become pure.
function inlineTree(prog: Program, n: Node): void {
  if (n === NIL) return
  inlineTree(prog, n.a)
  inlineTree(prog, n.b)
  inlineTree(prog, n.c)
  inlineTree(prog, n.d)
  let i = 0
  while (i < n.list.length) {
    inlineTree(prog, n.list[i])
    i++
  }
  if (n.kind !== "call" || n.tag !== "func") return
  const info = prog.funcs[n.slot]
  if (!canInline(info, n)) return
  const body = substitute(info.inl, n.list)
  const line = n.line
  const col = n.col
  const file = n.file
  const ty = n.ty
  n.kind = body.kind
  n.text = body.text
  n.num = body.num
  n.ann = body.ann
  n.slot = body.slot
  n.tag = body.tag
  n.reg = body.reg
  n.a = body.a
  n.b = body.b
  n.c = body.c
  n.d = body.d
  n.list = body.list
  n.line = line
  n.col = col
  n.file = file
  n.ty = ty
}

function alwaysReturns(n: Node): boolean {
  if (n.kind === "return") return true
  if (n.kind === "block") {
    let i = 0
    while (i < n.list.length) {
      if (alwaysReturns(n.list[i])) return true
      i++
    }
    return false
  }
  if (n.kind === "if") return n.c !== NIL && alwaysReturns(n.b) && alwaysReturns(n.c)
  if (n.kind === "while" && n.a.kind === "true") return true
  if (n.kind === "for" && n.b === NIL) return true
  return false
}

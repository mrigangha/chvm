import { mkType, NOTYPE } from "./ast.ts"
import type { Type } from "./ast.ts"

export const T_NUM: Type = mkType("number", "number", NOTYPE)
export const T_STR: Type = mkType("string", "string", NOTYPE)
export const T_BOOL: Type = mkType("boolean", "boolean", NOTYPE)
export const T_VOID: Type = mkType("void", "void", NOTYPE)
export const T_ANY: Type = mkType("any", "any", NOTYPE)

export function arrayOf(t: Type): Type {
  return mkType("array", "", t)
}

// A function type: elem is the return type and ftypes are the parameter types.
export function funcOf(params: Type[], ret: Type): Type {
  const t = mkType("func", "", ret)
  t.ftypes = params
  return t
}

export function typeStr(t: Type): string {
  if (t.kind === "array") return t.elem.kind === "func" ? "(" + typeStr(t.elem) + ")[]" : typeStr(t.elem) + "[]"
  if (t.kind === "func") {
    const ps: string[] = []
    let i = 0
    while (i < t.ftypes.length) {
      ps.push(typeStr(t.ftypes[i]))
      i++
    }
    return "(" + ps.join(", ") + ") => " + typeStr(t.elem)
  }
  if (t.kind === "none") return "?"
  return t.name
}

export function typeEq(a: Type, b: Type): boolean {
  if (a === b) return true
  if (a.kind !== b.kind) return false
  if (a.kind === "array") return typeEq(a.elem, b.elem)
  if (a.kind === "iface") return a.name === b.name
  if (a.kind === "func") {
    if (a.ftypes.length !== b.ftypes.length || !typeEq(a.elem, b.elem)) return false
    let i = 0
    while (i < a.ftypes.length) {
      if (!typeEq(a.ftypes[i], b.ftypes[i])) return false
      i++
    }
  }
  return true
}

// 'any' converts to and from every type. Everything else must match exactly.
export function assignable(to: Type, from: Type): boolean {
  if (to.kind === "any" || from.kind === "any") return true
  return typeEq(to, from)
}

export function isValueType(t: Type): boolean {
  return t.kind !== "void" && t.kind !== "none"
}

// Intrinsics: each one becomes a few machine instructions. Parameters of type number are
// converted to integers where the instruction needs one. Used only by the runtime in prelude.ts.
export interface Intrinsic {
  name: string
  params: Type[]
  ret: Type
}

function intr(name: string, params: Type[], ret: Type): Intrinsic {
  return { name: name, params: params, ret: ret }
}

export const INTRINSICS: Intrinsic[] = [
  intr("__ldi", [T_NUM], T_NUM),
  intr("__ldf", [T_NUM], T_NUM),
  intr("__ldp", [T_NUM], T_ANY),
  intr("__ld8", [T_NUM], T_NUM),
  intr("__sti", [T_NUM, T_NUM], T_VOID),
  intr("__stf", [T_NUM, T_NUM], T_VOID),
  intr("__stp", [T_NUM, T_ANY], T_VOID),
  intr("__st8", [T_NUM, T_NUM], T_VOID),
  intr("__toaddr", [T_ANY], T_NUM),
  intr("__fromaddr", [T_NUM], T_ANY),
  intr("__memcpy", [T_NUM, T_NUM, T_NUM], T_VOID),
  intr("__memcmp", [T_NUM, T_NUM, T_NUM], T_NUM),
  intr("__memset", [T_NUM, T_NUM, T_NUM], T_VOID),
  intr("__sbrk", [T_NUM], T_NUM),
  intr("__alloc_vm", [T_NUM], T_NUM),
  intr("__write", [T_NUM, T_NUM, T_NUM], T_NUM),
  intr("__read", [T_NUM, T_NUM, T_NUM], T_NUM),
  intr("__open", [T_NUM, T_NUM, T_NUM], T_NUM),
  intr("__close", [T_NUM], T_NUM),
  intr("__argc", [], T_NUM),
  intr("__argv", [T_NUM, T_NUM, T_NUM], T_NUM),
  intr("__spawn", [T_NUM, T_NUM], T_NUM),
  intr("__getenv", [T_NUM, T_NUM, T_NUM], T_NUM),
  intr("__listen", [T_NUM, T_NUM, T_NUM], T_NUM),
  intr("__accept", [T_NUM, T_NUM, T_NUM], T_NUM),
  intr("__poll", [T_NUM, T_NUM, T_NUM], T_NUM),
  intr("__shutdown", [T_NUM, T_NUM], T_NUM),
  intr("__sockport", [T_NUM], T_NUM),
  intr("__stopping", [], T_NUM),
  intr("__time", [T_NUM], T_NUM),
  intr("__seek", [T_NUM, T_NUM, T_NUM], T_NUM),
  intr("__pspawn", [T_ANY, T_NUM, T_NUM, T_NUM, T_NUM], T_NUM),
  intr("__self", [], T_NUM),
  intr("__send", [T_NUM, T_NUM, T_NUM, T_NUM], T_NUM),
  intr("__msgwait", [T_NUM, T_NUM], T_NUM),
  intr("__msgtake", [T_NUM, T_NUM], T_NUM),
  intr("__msgfrom", [], T_NUM),
  intr("__msgtag", [], T_NUM),
  intr("__plink", [T_NUM], T_NUM),
  intr("__punlink", [T_NUM], T_NUM),
  intr("__monitor", [T_NUM], T_NUM),
  intr("__trapexit", [T_NUM], T_NUM),
  intr("__pkill", [T_NUM], T_NUM),
  intr("__sleep", [T_NUM], T_NUM),
  intr("__yield", [], T_NUM),
  intr("__pcount", [], T_NUM),
  intr("__pinfo", [T_NUM, T_NUM], T_NUM),
  intr("__exit", [T_NUM], T_VOID),
  intr("__fmtnum", [T_NUM, T_NUM, T_NUM], T_NUM),
  intr("__parsenum", [T_NUM, T_NUM], T_NUM),
  intr("__trap", [], T_VOID),
  intr("__throw", [T_ANY], T_VOID),
]

// Index of the intrinsic with this name, or -1.
export function findIntrinsic(name: string): number {
  let i = 0
  while (i < INTRINSICS.length) {
    if (INTRINSICS[i].name === name) return i
    i++
  }
  return -1
}

import { plFatal } from "./fatal.ts"

// The data a template reads. A name holds text, a list of contexts, or one context (an object), and
// {{ a.b.c }} walks through objects. Use one kind per name: the first match wins in the order text, list, object.
export interface Context {
  names: string[]
  values: string[]
  listNames: string[]
  lists: Context[][]
  objNames: string[]
  objs: Context[]
}

export function newContext(): Context {
  const n: string[] = []
  const v: string[] = []
  const ln: string[] = []
  const l: Context[][] = []
  const on: string[] = []
  const o: Context[] = []
  return { names: n, values: v, listNames: ln, lists: l, objNames: on, objs: o }
}

// A name in a template: a letter or _ then letters, digits or _.
export function plIsIdent(s: string): boolean {
  if (s.length === 0) return false
  let i = 0
  while (i < s.length) {
    const c = s.charCodeAt(i)
    const letter = (c >= 65 && c <= 90) || (c >= 97 && c <= 122) || c === 95
    if (!letter && !(i > 0 && c >= 48 && c <= 57)) return false
    i++
  }
  return true
}

function plCheckIdent(name: string): void {
  if (!plIsIdent(name)) plFatal("the template name '" + name + "' must be letters, digits and _, and not start with a digit")
}

function plIndex(names: string[], name: string): number {
  let i = 0
  while (i < names.length) {
    if (names[i] === name) return i
    i++
  }
  return -1
}

export function setVar(ctx: Context, name: string, value: string): void {
  plCheckIdent(name)
  const i = plIndex(ctx.names, name)
  if (i >= 0) {
    ctx.values[i] = value
  } else {
    ctx.names.push(name)
    ctx.values.push(value)
  }
}

export function setNumber(ctx: Context, name: string, value: number): void {
  setVar(ctx, name, "" + value)
}

export function setList(ctx: Context, name: string, items: Context[]): void {
  plCheckIdent(name)
  const i = plIndex(ctx.listNames, name)
  if (i >= 0) {
    ctx.lists[i] = items
  } else {
    ctx.listNames.push(name)
    ctx.lists.push(items)
  }
}

export function setObject(ctx: Context, name: string, obj: Context): void {
  plCheckIdent(name)
  const i = plIndex(ctx.objNames, name)
  if (i >= 0) {
    ctx.objs[i] = obj
  } else {
    ctx.objNames.push(name)
    ctx.objs.push(obj)
  }
}

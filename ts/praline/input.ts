import type { Request } from "./request.ts"
import { plIsDigits, plParseUint, plLower } from "./strings.ts"
import { plFatal } from "./fatal.ts"

// A handler that asks for a parameter its route does not have is a mistake in the program: it stops
// with a message, the same way a route set up wrong does.
function plInputError(msg: string): void {
  plFatal(msg)
}

function plFirst(names: string[], values: string[], name: string, fallback: string): string {
  let i = 0
  while (i < names.length) {
    if (names[i] === name) return values[i]
    i++
  }
  return fallback
}

function plAll(names: string[], values: string[], name: string): string[] {
  const out: string[] = []
  let i = 0
  while (i < names.length) {
    if (names[i] === name) out.push(values[i])
    i++
  }
  return out
}

// A <name> or <int:name> part of the route, decoded.
export function param(req: Request, name: string): string {
  let i = 0
  while (i < req.paramNames.length) {
    if (req.paramNames[i] === name) return req.paramValues[i]
    i++
  }
  plInputError("this route has no parameter '" + name + "'")
  return ""
}

// A parameter that holds 1 to 9 digits, as a number. <int:name> always does.
export function paramInt(req: Request, name: string): number {
  const v = param(req, name)
  if (!plIsDigits(v) || v.length > 9) plInputError("the parameter '" + name + "' is not a whole number of 9 digits or fewer")
  return plParseUint(v)
}

// The first value of a query string argument, or the fallback.
export function arg(req: Request, name: string, fallback: string): string {
  return plFirst(req.argNames, req.argValues, name, fallback)
}

export function argAll(req: Request, name: string): string[] {
  return plAll(req.argNames, req.argValues, name)
}

// The first value of a field in a urlencoded body, or the fallback.
export function form(req: Request, name: string, fallback: string): string {
  return plFirst(req.formNames, req.formValues, name, fallback)
}

export function formAll(req: Request, name: string): string[] {
  return plAll(req.formNames, req.formValues, name)
}

// The first header with this name, whatever its case, or the fallback.
export function header(req: Request, name: string, fallback: string): string {
  return plFirst(req.headerNames, req.headerValues, plLower(name), fallback)
}

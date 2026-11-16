import type { Response } from "./response.ts"
import { makeResponse, addHeader } from "./response.ts"
import { plFatal } from "./fatal.ts"

// JSON is built from text: each function returns a piece of JSON, and the pieces are joined.
//   json(jsonObject(["name", "n"], [jsonString("Ann"), jsonNumber(3)]))
// A string is escaped as JSON.stringify does: quote, backslash, and bytes below 32. Bytes above 127 are
// kept, so UTF-8 text stays UTF-8, and text that is not valid UTF-8 gives JSON that is not valid either.

export function jsonString(s: string): string {
  const hex = "0123456789abcdef"
  const parts: string[] = []
  let run = 0
  let i = 0
  while (i < s.length) {
    const c = s.charCodeAt(i)
    let rep = ""
    if (c === 34) rep = "\\\""
    else if (c === 92) rep = "\\\\"
    else if (c === 8) rep = "\\b"
    else if (c === 12) rep = "\\f"
    else if (c === 10) rep = "\\n"
    else if (c === 13) rep = "\\r"
    else if (c === 9) rep = "\\t"
    else if (c < 32) rep = "\\u00" + hex.slice(Math.floor(c / 16), Math.floor(c / 16) + 1) + hex.slice(c % 16, (c % 16) + 1)
    if (rep !== "") {
      parts.push(s.slice(run, i))
      parts.push(rep)
      run = i + 1
    }
    i++
  }
  parts.push(s.slice(run, s.length))
  return "\"" + parts.join("") + "\""
}

// NaN and infinity have no JSON form, so they become null, as in JSON.stringify.
export function jsonNumber(n: number): string {
  if (n !== n || n - n !== 0) return "null"
  return "" + n
}

export function jsonBool(b: boolean): string {
  return b ? "true" : "false"
}

export function jsonNull(): string {
  return "null"
}

export function jsonArray(items: string[]): string {
  return "[" + items.join(",") + "]"
}

export function jsonObject(names: string[], values: string[]): string {
  if (names.length !== values.length) plFatal("jsonObject has " + names.length + " names and " + values.length + " values")
  const parts: string[] = []
  let i = 0
  while (i < names.length) {
    parts.push(jsonString(names[i]) + ":" + values[i])
    i++
  }
  return "{" + parts.join(",") + "}"
}

// A response whose body is JSON text built with the functions above.
export function json(encoded: string): Response {
  const res = makeResponse(200, "application/json", encoded)
  addHeader(res, "X-Content-Type-Options", "nosniff")
  return res
}

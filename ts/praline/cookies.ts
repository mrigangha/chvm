import type { Request } from "./request.ts"
import type { Response } from "./response.ts"
import { addHeader } from "./response.ts"
import { percentEncode, percentDecode } from "./decode.ts"
import { plCharIndex, plTrim } from "./strings.ts"
import { plFatal } from "./fatal.ts"

export interface CookieOptions {
  path: string
  maxAge: number       // seconds the browser keeps it, or -1 to drop it when the browser closes
  secure: boolean      // only sent over HTTPS. Turn it on for a site that runs on HTTPS.
  httpOnly: boolean    // hidden from scripts on the page
  sameSite: string     // "Lax", "Strict" or "None" (None needs secure)
}

export function cookieOptions(): CookieOptions {
  return { path: "/", maxAge: -1, secure: false, httpOnly: true, sameSite: "Lax" }
}

function plTokenChar(c: number): boolean {
  if ((c >= 48 && c <= 57) || (c >= 65 && c <= 90) || (c >= 97 && c <= 122)) return true
  return c === 33 || c === 35 || c === 36 || c === 37 || c === 38 || c === 39 || c === 42 || c === 43 || c === 45 ||
    c === 46 || c === 94 || c === 95 || c === 96 || c === 124 || c === 126
}

function plCheckName(name: string): void {
  if (name.length === 0) plFatal("a cookie name is empty")
  let i = 0
  while (i < name.length) {
    if (!plTokenChar(name.charCodeAt(i))) plFatal("the cookie name '" + name + "' holds a character that is not allowed")
    i++
  }
}

function plCheckOptions(o: CookieOptions): void {
  if (o.path.length === 0 || o.path.charCodeAt(0) !== 47) plFatal("a cookie path must start with /")
  let i = 0
  while (i < o.path.length) {
    const c = o.path.charCodeAt(i)
    if (c < 32 || c === 127 || c === 59) plFatal("a cookie path cannot hold a control byte or ;")
    i++
  }
  if (o.maxAge !== -1 && (o.maxAge < 0 || Math.floor(o.maxAge) !== o.maxAge)) plFatal("a cookie maxAge is -1 or a whole number of seconds")
  if (o.sameSite !== "Lax" && o.sameSite !== "Strict" && o.sameSite !== "None") plFatal("a cookie sameSite is Lax, Strict or None")
  if (o.sameSite === "None" && !o.secure) plFatal("a cookie with sameSite None must also be secure")
}

function plCookieLine(name: string, value: string, o: CookieOptions, expires: boolean): string {
  let line = name + "=" + percentEncode(value) + "; Path=" + o.path
  if (o.maxAge >= 0) line += "; Max-Age=" + o.maxAge
  if (expires) line += "; Expires=Thu, 01 Jan 1970 00:00:00 GMT"
  if (o.secure) line += "; Secure"
  if (o.httpOnly) line += "; HttpOnly"
  line += "; SameSite=" + o.sameSite
  return line
}

// Adds a Set-Cookie header. The value is percent-encoded, so it can hold any bytes and cannot end the
// cookie early; cookie() decodes it again. The name and the options come from the program, so a mistake
// in them stops the program.
export function setCookie(res: Response, name: string, value: string, o: CookieOptions): void {
  plCheckName(name)
  plCheckOptions(o)
  addHeader(res, "Set-Cookie", plCookieLine(name, value, o, false))
}

// Asks the browser to forget a cookie. The path must be the one it was set with.
export function deleteCookie(res: Response, name: string, o: CookieOptions): void {
  plCheckName(name)
  plCheckOptions(o)
  const gone = cookieOptions()
  gone.path = o.path
  gone.maxAge = 0
  gone.secure = o.secure
  gone.httpOnly = o.httpOnly
  gone.sameSite = o.sameSite
  addHeader(res, "Set-Cookie", plCookieLine(name, "", gone, true))
}

// The decoded value of the first cookie with this name (the name is case sensitive), or the fallback.
export function cookie(req: Request, name: string, fallback: string): string {
  let h = 0
  while (h < req.headerNames.length) {
    if (req.headerNames[h] === "cookie") {
      const v = req.headerValues[h]
      let pos = 0
      while (pos < v.length) {
        let end = plCharIndex(v, 59, pos)
        if (end < 0) end = v.length
        const piece = plTrim(v.slice(pos, end))
        const eq = plCharIndex(piece, 61, 0)
        if (eq > 0 && piece.slice(0, eq) === name) {
          let val = piece.slice(eq + 1, piece.length)
          if (val.length >= 2 && val.charCodeAt(0) === 34 && val.charCodeAt(val.length - 1) === 34) val = val.slice(1, val.length - 1)
          return percentDecode(val, false)
        }
        pos = end + 1
      }
    }
    h++
  }
  return fallback
}

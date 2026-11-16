import { plCharIndex, plLower, plTrim } from "./strings.ts"

// The value of a hex digit, or -1.
export function plHexVal(c: number): number {
  if (c >= 48 && c <= 57) return c - 48
  if (c >= 65 && c <= 70) return c - 55
  if (c >= 97 && c <= 102) return c - 87
  return -1
}

// Decodes %XX. With plus, "+" becomes a space (query strings and forms, not paths). A "%" that is not
// followed by two hex digits is kept as it is. The text is built from slices and one join, so the
// cost is linear in its length.
export function percentDecode(s: string, plus: boolean): string {
  let needs = false
  let i = 0
  while (i < s.length) {
    const c = s.charCodeAt(i)
    if (c === 37 || (plus && c === 43)) needs = true
    i++
  }
  if (!needs) return s
  const parts: string[] = []
  let run = 0
  i = 0
  while (i < s.length) {
    const c = s.charCodeAt(i)
    if (c === 37 && i + 2 < s.length && plHexVal(s.charCodeAt(i + 1)) >= 0 && plHexVal(s.charCodeAt(i + 2)) >= 0) {
      parts.push(s.slice(run, i))
      parts.push(String.fromCharCode(plHexVal(s.charCodeAt(i + 1)) * 16 + plHexVal(s.charCodeAt(i + 2))))
      i += 3
      run = i
    } else if (plus && c === 43) {
      parts.push(s.slice(run, i))
      parts.push(" ")
      i++
      run = i
    } else {
      i++
    }
  }
  parts.push(s.slice(run, s.length))
  return parts.join("")
}

// Percent-encodes every byte except letters, digits and - . _ ~ . The result holds none of ; , " \\ or a
// space or a control byte, so it can go in a cookie or a URL part without ending it early.
export function percentEncode(s: string): string {
  const hex = "0123456789ABCDEF"
  let needs = false
  let i = 0
  while (i < s.length) {
    if (!plUnreserved(s.charCodeAt(i))) needs = true
    i++
  }
  if (!needs) return s
  const parts: string[] = []
  let run = 0
  i = 0
  while (i < s.length) {
    const c = s.charCodeAt(i)
    if (!plUnreserved(c)) {
      parts.push(s.slice(run, i))
      parts.push("%" + hex.slice(Math.floor(c / 16), Math.floor(c / 16) + 1) + hex.slice(c % 16, (c % 16) + 1))
      run = i + 1
    }
    i++
  }
  parts.push(s.slice(run, s.length))
  return parts.join("")
}

function plUnreserved(c: number): boolean {
  return (c >= 48 && c <= 57) || (c >= 65 && c <= 90) || (c >= 97 && c <= 122) || c === 45 || c === 46 || c === 95 || c === 126
}

// A request path is valid when every "%" has two hex digits and nothing decodes to a control byte.
export function plPathOk(path: string): boolean {
  let i = 0
  while (i < path.length) {
    if (path.charCodeAt(i) === 37) {
      if (i + 2 >= path.length) return false
      const h1 = plHexVal(path.charCodeAt(i + 1))
      const h2 = plHexVal(path.charCodeAt(i + 2))
      if (h1 < 0 || h2 < 0) return false
      const v = h1 * 16 + h2
      if (v < 32 || v === 127) return false
      i += 3
    } else {
      i++
    }
  }
  return true
}

// Splits "a=1&b=2&a=3" into decoded names and values. "a" alone is the name "a" with the value "".
export function plParsePairs(s: string, names: string[], values: string[]): void {
  let pos = 0
  while (pos < s.length) {
    let end = plCharIndex(s, 38, pos)
    if (end < 0) end = s.length
    const piece = s.slice(pos, end)
    if (piece.length > 0) {
      const eq = plCharIndex(piece, 61, 0)
      if (eq < 0) {
        names.push(percentDecode(piece, true))
        values.push("")
      } else {
        names.push(percentDecode(piece.slice(0, eq), true))
        values.push(percentDecode(piece.slice(eq + 1, piece.length), true))
      }
    }
    pos = end + 1
  }
}

// The media type of a Content-Type value: lower case, without parameters such as charset.
export function plMediaType(v: string): string {
  const semi = plCharIndex(v, 59, 0)
  return plLower(plTrim(semi < 0 ? v : v.slice(0, semi)))
}

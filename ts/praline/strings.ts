// String helpers for Praline. They stand in until the language has its own split, startsWith and
// toLowerCase (stage 7b). Names start with "pl" because every chts file shares one global namespace.

// The index of the first t in s at or after from, or -1.
export function plIndexFrom(s: string, t: string, from: number): number {
  const n = s.length
  const m = t.length
  let i = from
  while (i + m <= n) {
    let j = 0
    while (j < m && s.charCodeAt(i + j) === t.charCodeAt(j)) j++
    if (j === m) return i
    i++
  }
  return -1
}

// The index of the first byte with this code at or after from, or -1.
export function plCharIndex(s: string, code: number, from: number): number {
  let i = from
  while (i < s.length) {
    if (s.charCodeAt(i) === code) return i
    i++
  }
  return -1
}

export function plTrim(s: string): string {
  let a = 0
  let b = s.length
  while (a < b && (s.charCodeAt(a) === 32 || s.charCodeAt(a) === 9)) a++
  while (b > a && (s.charCodeAt(b - 1) === 32 || s.charCodeAt(b - 1) === 9)) b--
  return s.slice(a, b)
}

// ASCII lower case. A string with no capital letters is returned as it is.
export function plLower(s: string): string {
  let any = false
  let i = 0
  while (i < s.length) {
    const c = s.charCodeAt(i)
    if (c >= 65 && c <= 90) any = true
    i++
  }
  if (!any) return s
  let out = ""
  i = 0
  while (i < s.length) {
    const c = s.charCodeAt(i)
    out += String.fromCharCode(c >= 65 && c <= 90 ? c + 32 : c)
    i++
  }
  return out
}

// Does s hold only digits, and at least one?
export function plIsDigits(s: string): boolean {
  if (s.length === 0) return false
  let i = 0
  while (i < s.length) {
    const c = s.charCodeAt(i)
    if (c < 48 || c > 57) return false
    i++
  }
  return true
}

// The value of a string of digits, at most 9 of them so the result is exact.
export function plParseUint(s: string): number {
  let n = 0
  let i = 0
  while (i < s.length) {
    n = n * 10 + (s.charCodeAt(i) - 48)
    i++
  }
  return n
}

// Does s hold a byte below 32 or the byte 127?
export function plHasControl(s: string): boolean {
  let i = 0
  while (i < s.length) {
    const c = s.charCodeAt(i)
    if (c < 32 || c === 127) return true
    i++
  }
  return false
}

// s with every carriage return and line feed replaced by a space, so a value cannot end a header line.
export function plNoCrlf(s: string): string {
  if (plCharIndex(s, 13, 0) < 0 && plCharIndex(s, 10, 0) < 0) return s
  let out = ""
  let i = 0
  while (i < s.length) {
    const c = s.charCodeAt(i)
    out += String.fromCharCode(c === 13 || c === 10 ? 32 : c)
    i++
  }
  return out
}

export function plHas(list: string[], s: string): boolean {
  let i = 0
  while (i < list.length) {
    if (list[i] === s) return true
    i++
  }
  return false
}

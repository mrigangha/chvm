import { fail } from "./diag.ts"
import { removeChar } from "./util.ts"

// kind: "id" "num" "str" "punct" "eof". Keywords are plain ids.
export interface Token {
  kind: string
  text: string      // identifier or punctuation text, or the decoded string
  num: number       // value of a number token
  line: number
  col: number
  nl: boolean       // a line break came before this token
}

function isDigit(c: number): boolean {
  return c >= 48 && c <= 57
}

function isIdStart(c: number): boolean {
  return (c >= 97 && c <= 122) || (c >= 65 && c <= 90) || c === 95 || c === 36
}

function isIdPart(c: number): boolean {
  return isIdStart(c) || isDigit(c)
}

function hexVal(c: number): number {
  if (c >= 48 && c <= 57) return c - 48
  if (c >= 97 && c <= 102) return c - 87
  if (c >= 65 && c <= 70) return c - 55
  return -1
}

const PUNCT3: string[] = ["===", "!==", "**=", "<<=", ">>="]
const PUNCT2: string[] = ["==", "!=", "<=", ">=", "&&", "||", "++", "--", "+=", "-=", "*=", "/=", "%=", "=>", "<<", ">>", "**"]
const PUNCT1 = "{}()[];,.:?<>=+-*/%!&|^~"

export function lex(file: string, src: string): Token[] {
  const out: Token[] = []
  let i = 0
  let line = 1
  let lineStart = 0
  let nl = false
  while (i < src.length) {
    const c = src.charCodeAt(i)
    if (c === 10) {
      line++
      i++
      lineStart = i
      nl = true
      continue
    }
    if (c === 32 || c === 9 || c === 13) {
      i++
      continue
    }
    if (c === 47 && src.charCodeAt(i + 1) === 47) {
      while (i < src.length && src.charCodeAt(i) !== 10) i++
      continue
    }
    if (c === 47 && src.charCodeAt(i + 1) === 42) {
      const startLine = line
      const startCol = i - lineStart + 1
      i += 2
      while (i < src.length && !(src.charCodeAt(i) === 42 && src.charCodeAt(i + 1) === 47)) {
        if (src.charCodeAt(i) === 10) {
          line++
          lineStart = i + 1
          nl = true
        }
        i++
      }
      if (i >= src.length) fail(file, startLine, startCol, "unterminated comment")
      i += 2
      continue
    }
    const col = i - lineStart + 1
    if (isIdStart(c)) {
      const start = i
      while (i < src.length && isIdPart(src.charCodeAt(i))) i++
      out.push({ kind: "id", text: src.slice(start, i), num: 0, line: line, col: col, nl: nl })
      nl = false
      continue
    }
    if (isDigit(c) || (c === 46 && isDigit(src.charCodeAt(i + 1)))) {
      const start = i
      let v = 0
      if (c === 48 && (src.charCodeAt(i + 1) === 120 || src.charCodeAt(i + 1) === 88)) {
        i += 2
        const first = i
        while (i < src.length && hexVal(src.charCodeAt(i)) >= 0) {
          v = v * 16 + hexVal(src.charCodeAt(i))
          i++
        }
        if (i === first) fail(file, line, col, "hexadecimal number has no digits")
      } else {
        while (i < src.length && (isDigit(src.charCodeAt(i)) || src.charCodeAt(i) === 95)) i++
        if (src.charCodeAt(i) === 46) {
          i++
          while (i < src.length && (isDigit(src.charCodeAt(i)) || src.charCodeAt(i) === 95)) i++
        }
        if (src.charCodeAt(i) === 101 || src.charCodeAt(i) === 69) {
          i++
          if (src.charCodeAt(i) === 43 || src.charCodeAt(i) === 45) i++
          if (!isDigit(src.charCodeAt(i))) fail(file, line, col, "exponent has no digits")
          while (i < src.length && isDigit(src.charCodeAt(i))) i++
        }
        v = Number(removeChar(src.slice(start, i), 95))
      }
      if (isIdStart(src.charCodeAt(i))) fail(file, line, col, "a number must not be followed by a letter")
      out.push({ kind: "num", text: src.slice(start, i), num: v, line: line, col: col, nl: nl })
      nl = false
      continue
    }
    if (c === 34 || c === 39) {
      const quote = c
      i++
      const parts: string[] = []
      let runStart = i
      while (true) {
        if (i >= src.length || src.charCodeAt(i) === 10) fail(file, line, col, "unterminated string")
        const d = src.charCodeAt(i)
        if (d === quote) break
        if (d === 92) {
          parts.push(src.slice(runStart, i))
          i++
          const e = src.charCodeAt(i)
          if (e === 110) parts.push("\n")
          else if (e === 116) parts.push("\t")
          else if (e === 114) parts.push("\r")
          else if (e === 48) parts.push(String.fromCharCode(0))
          else if (e === 92 || e === 39 || e === 34) parts.push(String.fromCharCode(e))
          else if (e === 120) {
            const h1 = hexVal(src.charCodeAt(i + 1))
            const h2 = hexVal(src.charCodeAt(i + 2))
            if (h1 < 0 || h2 < 0) fail(file, line, i - lineStart + 1, "bad \\x escape")
            parts.push(String.fromCharCode(h1 * 16 + h2))
            i += 2
          } else fail(file, line, i - lineStart, "unsupported escape")
          i++
          runStart = i
          continue
        }
        i++
      }
      parts.push(src.slice(runStart, i))
      i++
      out.push({ kind: "str", text: parts.join(""), num: 0, line: line, col: col, nl: nl })
      nl = false
      continue
    }
    let matched = ""
    const three = src.slice(i, i + 3)
    const two = src.slice(i, i + 2)
    let k = 0
    while (k < PUNCT3.length) {
      if (PUNCT3[k] === three) matched = three
      k++
    }
    if (matched === "") {
      k = 0
      while (k < PUNCT2.length) {
        if (PUNCT2[k] === two) matched = two
        k++
      }
    }
    if (matched === "" && PUNCT1.indexOf(src.slice(i, i + 1)) >= 0) matched = src.slice(i, i + 1)
    if (matched === "") fail(file, line, col, "unexpected character '" + src.slice(i, i + 1) + "'")
    out.push({ kind: "punct", text: matched, num: 0, line: line, col: col, nl: nl })
    nl = false
    i += matched.length
  }
  out.push({ kind: "eof", text: "", num: 0, line: line, col: i - lineStart + 1, nl: nl })
  return out
}

import { lex } from "./lexer.ts"
import type { Token } from "./lexer.ts"
import { NIL, NOTYPE, mkNode, mkType } from "./ast.ts"
import type { Node, Type } from "./ast.ts"
import { fail } from "./diag.ts"

// Syntax tree node kinds
//   expressions: num str true false id array object index member call unary update binary logical assign cond
//   statements:  var expr if while for block return break continue empty
//   top level:   func iface import

export interface Parser {
  file: string
  toks: Token[]
  pos: number
}

function peek(p: Parser): Token {
  return p.toks[p.pos]
}

function peekAt(p: Parser, n: number): Token {
  const i = p.pos + n
  if (i >= p.toks.length) return p.toks[p.toks.length - 1]
  return p.toks[i]
}

function isP(p: Parser, text: string): boolean {
  const t = p.toks[p.pos]
  return t.kind === "punct" && t.text === text
}

function isId(p: Parser, text: string): boolean {
  const t = p.toks[p.pos]
  return t.kind === "id" && t.text === text
}

function describe(t: Token): string {
  if (t.kind === "eof") return "end of file"
  if (t.kind === "num") return "number " + t.text
  if (t.kind === "str") return "a string"
  return "'" + t.text + "'"
}

function errHere(p: Parser, msg: string): void {
  const t = peek(p)
  fail(p.file, t.line, t.col, msg)
}

function advance(p: Parser): Token {
  const t = p.toks[p.pos]
  if (t.kind !== "eof") p.pos++
  return t
}

function expectP(p: Parser, text: string): Token {
  if (!isP(p, text)) errHere(p, "expected '" + text + "' but found " + describe(peek(p)))
  return advance(p)
}

function acceptP(p: Parser, text: string): boolean {
  if (isP(p, text)) {
    advance(p)
    return true
  }
  return false
}

function expectKw(p: Parser, text: string): Token {
  if (!isId(p, text)) errHere(p, "expected '" + text + "' but found " + describe(peek(p)))
  return advance(p)
}

const RESERVED: string[] = [
  "let", "const", "var", "function", "if", "else", "while", "for", "do", "break", "continue", "return",
  "true", "false", "interface", "import", "export", "enum", "class", "new", "typeof",
  "switch", "case", "default", "null", "undefined", "this", "throw", "try", "catch", "finally", "in",
]

function isReserved(s: string): boolean {
  let i = 0
  while (i < RESERVED.length) {
    if (RESERVED[i] === s) return true
    i++
  }
  return false
}

function expectName(p: Parser): Token {
  const t = peek(p)
  if (t.kind !== "id" || isReserved(t.text)) errHere(p, "expected a name but found " + describe(t))
  return advance(p)
}

// A statement ends at ';', or before '}', or at a line break, or at the end of the file.
function endStmt(p: Parser): void {
  if (acceptP(p, ";")) return
  const t = peek(p)
  if (t.kind === "eof" || t.nl || (t.kind === "punct" && t.text === "}")) return
  errHere(p, "expected ';' but found " + describe(t))
}

// ---- types ----

function parseType(p: Parser): Type {
  const t = peek(p)
  let base = NOTYPE
  if (t.kind !== "id") errHere(p, "expected a type but found " + describe(t))
  if (t.text === "number" || t.text === "string" || t.text === "boolean" || t.text === "void" || t.text === "any") {
    advance(p)
    base = mkType(t.text, t.text, NOTYPE)
  } else if (isReserved(t.text)) {
    errHere(p, "expected a type but found '" + t.text + "'")
  } else {
    advance(p)
    base = mkType("name", t.text, NOTYPE)
    if (isP(p, "<")) errHere(p, "generic types are not supported")
  }
  while (isP(p, "[") && peekAt(p, 1).kind === "punct" && peekAt(p, 1).text === "]") {
    advance(p)
    advance(p)
    base = mkType("array", "", base)
  }
  if (isP(p, "|")) errHere(p, "union types are not supported")
  return base
}

// ---- expressions ----

function parseExpr(p: Parser): Node {
  return parseAssign(p)
}

function mk(p: Parser, kind: string, t: Token): Node {
  return mkNode(kind, p.file, t.line, t.col)
}

function isAssignOp(s: string): boolean {
  return s === "=" || s === "+=" || s === "-=" || s === "*=" || s === "/=" || s === "%="
}

function parseAssign(p: Parser): Node {
  const left = parseCond(p)
  const t = peek(p)
  if (t.kind === "punct" && isAssignOp(t.text)) {
    if (left.kind !== "id" && left.kind !== "index" && left.kind !== "member") {
      fail(p.file, t.line, t.col, "the left side of an assignment must be a variable, an element or a field")
    }
    advance(p)
    const n = mk(p, "assign", t)
    n.text = t.text
    n.a = left
    n.b = parseAssign(p)
    return n
  }
  return left
}

function parseCond(p: Parser): Node {
  const c = parseBinary(p, 0)
  if (isP(p, "?")) {
    const t = advance(p)
    const n = mk(p, "cond", t)
    n.a = c
    n.b = parseAssign(p)
    expectP(p, ":")
    n.c = parseAssign(p)
    return n
  }
  return c
}

function binPrec(s: string): number {
  if (s === "||") return 1
  if (s === "&&") return 2
  if (s === "===" || s === "!==" || s === "==" || s === "!=") return 3
  if (s === "<" || s === "<=" || s === ">" || s === ">=") return 4
  if (s === "+" || s === "-") return 5
  if (s === "*" || s === "/" || s === "%") return 6
  return 0
}

function parseBinary(p: Parser, minPrec: number): Node {
  let left = parseUnary(p)
  while (true) {
    const t = peek(p)
    if (t.kind !== "punct") break
    const prec = binPrec(t.text)
    if (prec === 0 || prec <= minPrec) break
    advance(p)
    const right = parseBinary(p, prec)
    const n = mk(p, t.text === "&&" || t.text === "||" ? "logical" : "binary", t)
    n.text = t.text
    n.a = left
    n.b = right
    left = n
  }
  return left
}

function parseUnary(p: Parser): Node {
  const t = peek(p)
  if (t.kind === "punct" && (t.text === "-" || t.text === "!" || t.text === "+")) {
    advance(p)
    const n = mk(p, "unary", t)
    n.text = t.text
    n.a = parseUnary(p)
    return n
  }
  if (t.kind === "punct" && (t.text === "++" || t.text === "--")) {
    advance(p)
    const n = mk(p, "update", t)
    n.text = t.text
    n.num = 1
    n.a = parseUnary(p)
    if (n.a.kind !== "id" && n.a.kind !== "index" && n.a.kind !== "member") {
      fail(p.file, t.line, t.col, "'" + t.text + "' needs a variable, an element or a field")
    }
    return n
  }
  if (t.kind === "id" && (t.text === "typeof" || t.text === "new")) errHere(p, "'" + t.text + "' is not supported")
  return parsePostfix(p)
}

function parseArgs(p: Parser): Node[] {
  const args: Node[] = []
  expectP(p, "(")
  while (!isP(p, ")")) {
    args.push(parseAssign(p))
    if (!acceptP(p, ",")) break
  }
  expectP(p, ")")
  return args
}

function parsePostfix(p: Parser): Node {
  let e = parsePrimary(p)
  while (true) {
    const t = peek(p)
    if (t.kind !== "punct") break
    if (t.text === "(") {
      const n = mk(p, "call", t)
      n.a = e
      n.list = parseArgs(p)
      e = n
    } else if (t.text === "[") {
      advance(p)
      const n = mk(p, "index", t)
      n.a = e
      n.b = parseExpr(p)
      expectP(p, "]")
      e = n
    } else if (t.text === ".") {
      advance(p)
      const nameTok = peek(p)
      if (nameTok.kind !== "id") errHere(p, "expected a field name but found " + describe(nameTok))
      advance(p)
      const n = mk(p, "member", nameTok)
      n.a = e
      n.text = nameTok.text
      e = n
    } else if ((t.text === "++" || t.text === "--") && !t.nl) {
      advance(p)
      if (e.kind !== "id" && e.kind !== "index" && e.kind !== "member") {
        fail(p.file, t.line, t.col, "'" + t.text + "' needs a variable, an element or a field")
      }
      const n = mk(p, "update", t)
      n.text = t.text
      n.num = 0
      n.a = e
      e = n
    } else if (t.text === "!" && false) {
      break
    } else {
      break
    }
  }
  return e
}

function parsePrimary(p: Parser): Node {
  const t = peek(p)
  if (t.kind === "num") {
    advance(p)
    const n = mk(p, "num", t)
    n.num = t.num
    n.text = t.text
    return n
  }
  if (t.kind === "str") {
    advance(p)
    const n = mk(p, "str", t)
    n.text = t.text
    return n
  }
  if (t.kind === "id") {
    if (t.text === "true" || t.text === "false") {
      advance(p)
      return mk(p, t.text, t)
    }
    if (isReserved(t.text)) errHere(p, "unexpected '" + t.text + "'")
    advance(p)
    const n = mk(p, "id", t)
    n.text = t.text
    return n
  }
  if (t.kind === "punct" && t.text === "(") {
    advance(p)
    const e = parseExpr(p)
    expectP(p, ")")
    return e
  }
  if (t.kind === "punct" && t.text === "[") {
    advance(p)
    const n = mk(p, "array", t)
    while (!isP(p, "]")) {
      n.list.push(parseAssign(p))
      if (!acceptP(p, ",")) break
    }
    expectP(p, "]")
    return n
  }
  if (t.kind === "punct" && t.text === "{") {
    advance(p)
    const n = mk(p, "object", t)
    while (!isP(p, "}")) {
      const nameTok = peek(p)
      if (nameTok.kind !== "id" && nameTok.kind !== "str") errHere(p, "expected a field name but found " + describe(nameTok))
      advance(p)
      const f = mk(p, "field", nameTok)
      f.text = nameTok.text
      if (isP(p, ":")) {
        advance(p)
        f.a = parseAssign(p)
      } else {
        fail(p.file, nameTok.line, nameTok.col, "write the field as 'name: value'")
      }
      n.list.push(f)
      if (!acceptP(p, ",")) break
    }
    expectP(p, "}")
    return n
  }
  errHere(p, "expected an expression but found " + describe(t))
  return NIL
}

// ---- statements ----

function parseBlock(p: Parser): Node {
  const t = expectP(p, "{")
  const n = mk(p, "block", t)
  while (!isP(p, "}")) {
    if (peek(p).kind === "eof") errHere(p, "expected '}' but found end of file")
    n.list.push(parseStmt(p))
  }
  expectP(p, "}")
  return n
}

function parseVar(p: Parser): Node {
  const kw = advance(p)
  const n = mk(p, "var", kw)
  n.num = kw.text === "const" ? 1 : 0
  const nameTok = expectName(p)
  n.text = nameTok.text
  n.line = nameTok.line
  n.col = nameTok.col
  if (acceptP(p, ":")) n.ann = parseType(p)
  if (isId(p, "of") || isId(p, "in")) errHere(p, "'for...of' is not supported, use a counting loop")
  if (!isP(p, "=")) fail(p.file, nameTok.line, nameTok.col, "'" + nameTok.text + "' needs an initial value")
  advance(p)
  n.a = parseExpr(p)
  if (isP(p, ",")) errHere(p, "declare one variable per statement")
  return n
}

function parseSimpleStmt(p: Parser): Node {
  if (isId(p, "let") || isId(p, "const")) return parseVar(p)
  const t = peek(p)
  const n = mk(p, "expr", t)
  n.a = parseExpr(p)
  return n
}

function parseStmt(p: Parser): Node {
  const t = peek(p)
  if (t.kind === "punct") {
    if (t.text === "{") return parseBlock(p)
    if (t.text === ";") {
      advance(p)
      return mk(p, "empty", t)
    }
  }
  if (t.kind === "id") {
    if (t.text === "let" || t.text === "const") {
      const n = parseVar(p)
      endStmt(p)
      return n
    }
    if (t.text === "var") errHere(p, "use 'let' or 'const' instead of 'var'")
    if (t.text === "if") {
      advance(p)
      const n = mk(p, "if", t)
      expectP(p, "(")
      n.a = parseExpr(p)
      expectP(p, ")")
      n.b = parseStmt(p)
      if (isId(p, "else")) {
        advance(p)
        n.c = parseStmt(p)
      }
      return n
    }
    if (t.text === "while") {
      advance(p)
      const n = mk(p, "while", t)
      expectP(p, "(")
      n.a = parseExpr(p)
      expectP(p, ")")
      n.b = parseStmt(p)
      return n
    }
    if (t.text === "for") {
      advance(p)
      const n = mk(p, "for", t)
      expectP(p, "(")
      if (!isP(p, ";")) n.a = parseSimpleStmt(p)
      if (isId(p, "of") || isId(p, "in")) errHere(p, "'for...of' is not supported, use a counting loop")
      expectP(p, ";")
      if (!isP(p, ";")) n.b = parseExpr(p)
      expectP(p, ";")
      if (!isP(p, ")")) n.c = parseExpr(p)
      expectP(p, ")")
      n.d = parseStmt(p)
      return n
    }
    if (t.text === "return") {
      advance(p)
      const n = mk(p, "return", t)
      const nx = peek(p)
      if (!(nx.nl || nx.kind === "eof" || (nx.kind === "punct" && (nx.text === ";" || nx.text === "}")))) n.a = parseExpr(p)
      endStmt(p)
      return n
    }
    if (t.text === "break" || t.text === "continue") {
      advance(p)
      endStmt(p)
      return mk(p, t.text, t)
    }
    if (t.text === "function" || t.text === "interface" || t.text === "import" || t.text === "export") {
      errHere(p, "'" + t.text + "' is only allowed at the top level")
    }
    if (t.text === "do" || t.text === "switch" || t.text === "try" || t.text === "throw" || t.text === "class" || t.text === "enum" || t.text === "type") {
      errHere(p, "'" + t.text + "' is not supported")
    }
  }
  const n = mk(p, "expr", t)
  n.a = parseExpr(p)
  endStmt(p)
  return n
}

// ---- top level ----

function parseFunc(p: Parser, exported: boolean): Node {
  const kw = expectKw(p, "function")
  const n = mk(p, "func", kw)
  n.num = exported ? 1 : 0
  const nameTok = expectName(p)
  n.text = nameTok.text
  n.line = nameTok.line
  n.col = nameTok.col
  if (isP(p, "<")) errHere(p, "generic functions are not supported")
  expectP(p, "(")
  while (!isP(p, ")")) {
    const pn = expectName(p)
    const param = mk(p, "param", pn)
    param.text = pn.text
    if (!isP(p, ":")) fail(p.file, pn.line, pn.col, "parameter '" + pn.text + "' needs a type")
    advance(p)
    param.ann = parseType(p)
    n.list.push(param)
    if (!acceptP(p, ",")) break
  }
  expectP(p, ")")
  if (n.list.length > 5) fail(p.file, nameTok.line, nameTok.col, "a function can have at most 5 parameters")
  if (!isP(p, ":")) fail(p.file, nameTok.line, nameTok.col, "function '" + nameTok.text + "' needs a return type")
  advance(p)
  n.ann = parseType(p)
  n.a = parseBlock(p)
  return n
}

function parseInterface(p: Parser, exported: boolean): Node {
  const kw = expectKw(p, "interface")
  const n = mk(p, "iface", kw)
  n.num = exported ? 1 : 0
  const nameTok = expectName(p)
  n.text = nameTok.text
  n.line = nameTok.line
  n.col = nameTok.col
  expectP(p, "{")
  while (!isP(p, "}")) {
    const fn = peek(p)
    if (fn.kind !== "id") errHere(p, "expected a field name but found " + describe(fn))
    advance(p)
    const f = mk(p, "field", fn)
    f.text = fn.text
    if (isP(p, "?")) errHere(p, "optional fields are not supported")
    expectP(p, ":")
    f.ann = parseType(p)
    n.list.push(f)
    if (!acceptP(p, ";") && !acceptP(p, ",")) {
      const nx = peek(p)
      if (!(nx.nl || (nx.kind === "punct" && nx.text === "}"))) errHere(p, "expected ';' but found " + describe(nx))
    }
  }
  expectP(p, "}")
  return n
}

function parseImport(p: Parser): Node {
  const kw = expectKw(p, "import")
  const n = mk(p, "import", kw)
  if (isId(p, "type")) advance(p)
  expectP(p, "{")
  while (!isP(p, "}")) {
    const nameTok = peek(p)
    if (nameTok.kind !== "id") errHere(p, "expected a name but found " + describe(nameTok))
    advance(p)
    const item = mk(p, "name", nameTok)
    item.text = nameTok.text
    n.list.push(item)
    if (isId(p, "as")) errHere(p, "'as' is not supported")
    if (!acceptP(p, ",")) break
  }
  expectP(p, "}")
  expectKw(p, "from")
  const s = peek(p)
  if (s.kind !== "str") errHere(p, "expected a file name in quotes")
  advance(p)
  n.text = s.text
  endStmt(p)
  return n
}

export function parseFile(file: string, src: string): Node {
  const p: Parser = { file: file, toks: lex(file, src), pos: 0 }
  const root = mkNode("file", file, 1, 1)
  root.text = file
  while (peek(p).kind !== "eof") {
    let exported = false
    if (isId(p, "export")) {
      advance(p)
      exported = true
      if (isP(p, "*") || isP(p, "{") || isId(p, "default")) errHere(p, "only 'export' in front of a declaration is supported")
    }
    if (isId(p, "function")) root.list.push(parseFunc(p, exported))
    else if (isId(p, "interface")) root.list.push(parseInterface(p, exported))
    else if (isId(p, "import") && !exported) root.list.push(parseImport(p))
    else if (isId(p, "let") || isId(p, "const")) {
      const v = parseVar(p)
      endStmt(p)
      root.list.push(v)
    } else root.list.push(parseStmt(p))
  }
  return root
}

// A readable dump of a tree, used by the tests.
export function dump(n: Node): string {
  if (n.kind === "nil") return "_"
  const parts: string[] = []
  if (n.kind === "num") return "" + n.num
  if (n.kind === "str") return "\"" + n.text + "\""
  if (n.kind === "id" || n.kind === "name") return n.text
  if (n.kind === "true" || n.kind === "false" || n.kind === "break" || n.kind === "continue" || n.kind === "empty") return n.kind
  parts.push(n.kind + (n.text !== "" ? ":" + n.text : ""))
  if (n.ann !== NOTYPE) parts.push("<" + typeText(n.ann) + ">")
  if (n.a !== NIL) parts.push(dump(n.a))
  if (n.b !== NIL) parts.push(dump(n.b))
  if (n.c !== NIL) parts.push(dump(n.c))
  if (n.d !== NIL) parts.push(dump(n.d))
  let i = 0
  while (i < n.list.length) {
    parts.push(dump(n.list[i]))
    i++
  }
  return "(" + parts.join(" ") + ")"
}

export function typeText(t: Type): string {
  if (t.kind === "array") return typeText(t.elem) + "[]"
  if (t.kind === "none") return "?"
  return t.name
}

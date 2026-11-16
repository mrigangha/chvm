import type { Response } from "./response.ts"
import type { Context } from "./context.ts"
import { html } from "./response.ts"
import { newContext, plIsIdent } from "./context.ts"
import { htmlEscape } from "./escape.ts"
import { plFatal } from "./fatal.ts"
import { plCharIndex, plIndexFrom, plTrim, plHasControl } from "./strings.ts"
import { fileExists, readFile } from "../std/os.ts"

// Templates. The syntax:
//   {{ name }}            text, HTML-escaped          {{{ name }}}  text, as it is
//   {{ a.b }}             a field of an object, or of a loop variable
//   {% if x %} .. {% else %} .. {% endif %}           x is true when it is non-empty text, a non-empty list or an object
//   {% if not x %}   {% if x == "text" %}   {% if x != "text" %}
//   {% for p in list %} .. {% else %} .. {% endfor %}  the else part runs for an empty or missing list
//   {% include "file.html" %}                          shares the variables of the page that includes it
//   {% extends "base.html" %}  and  {% block name %} .. {% endblock %}
//   {# a comment #}
// Inside a loop, loop.index (from 1), loop.index0, loop.first, loop.last and loop.length are available.
// A {% tag %} or {# comment #} that is alone on its line takes the whole line away with it.
//
// Every template is read and checked once, at start up, and the files it includes or extends are read
// then too. A mistake in a template stops the program with the file and line. After that a template is
// only read, so rendering cannot fail on a missing file, and the parsed trees can sit below the arena mark.

export interface TNode {
  kind: string        // "text" "var" "raw" "if" "for" "include" "block"
  text: string        // the text, the name (var, path), the loop variable, the template, the block name
  text2: string       // for: the list path. if: the text compared with
  num: number         // if: 0 true, 1 not true, 2 equals, 3 not equals
  line: number
  kids: TNode[]
  elseKids: TNode[]
}

export interface Template {
  name: string
  nodes: TNode[]
  parent: string      // the template named by extends, or ""
  blocks: TNode[]     // every block in the file
}

export interface Templates {
  dir: string
  strict: boolean     // an unknown variable shows as [[unknown variable: x]] instead of nothing
  tpls: Template[]
  loading: string[]   // the templates being read now, to find a cycle
}

export function newTemplates(dir: string): Templates {
  const t: Template[] = []
  const l: string[] = []
  return { dir: dir, strict: false, tpls: t, loading: l }
}

function plNode(kind: string, text: string, line: number): TNode {
  const k: TNode[] = []
  const e: TNode[] = []
  return { kind: kind, text: text, text2: "", num: 0, line: line, kids: k, elseKids: e }
}

function plFail(file: string, line: number, msg: string): void {
  plFatal(file + ":" + line + ": " + msg)
}

// ---- reading the text ----

interface Tok {
  kind: string        // "text" "var" "raw" "tag"
  text: string
  line: number
}

function plCountLines(s: string): number {
  let n = 0
  let i = 0
  while (i < s.length) {
    if (s.charCodeAt(i) === 10) n++
    i++
  }
  return n
}

function plBlank(c: number): boolean {
  return c === 32 || c === 9
}

// Is the text only spaces, tabs and line breaks?
function plAllBlank(s: string): boolean {
  let i = 0
  while (i < s.length) {
    const c = s.charCodeAt(i)
    if (c !== 32 && c !== 9 && c !== 10 && c !== 13) return false
    i++
  }
  return true
}

function plTokenize(file: string, src: string): Tok[] {
  const out: Tok[] = []
  let pos = 0
  let pendLine = 1
  let i = 0
  let line = 1
  while (i < src.length) {
    const c = src.charCodeAt(i)
    if (c === 10) line++
    if (c !== 123 || i + 1 >= src.length) {
      i++
      continue
    }
    const d = src.charCodeAt(i + 1)
    if (d !== 123 && d !== 37 && d !== 35) {
      i++
      continue
    }
    let open = 2
    let close = "}}"
    let kind = "var"
    if (d === 123 && i + 2 < src.length && src.charCodeAt(i + 2) === 123) {
      open = 3
      close = "}}}"
      kind = "raw"
    } else if (d === 37) {
      close = "%}"
      kind = "tag"
    } else if (d === 35) {
      close = "#}"
      kind = "comment"
    }
    const end = plIndexFrom(src, close, i + open)
    if (end < 0) plFail(file, line, "'" + src.slice(i, i + open) + "' is never closed with '" + close + "'")
    const after = end + close.length
    const inner = src.slice(i + open, end)
    if (kind === "var" || kind === "raw") {
      if (i > pos) out.push({ kind: "text", text: src.slice(pos, i), line: pendLine })
      out.push({ kind: kind, text: plTrim(inner), line: line })
      line += plCountLines(inner)
      pos = after
      pendLine = line
      i = after
      continue
    }
    // a tag or a comment: when it is alone on its line, the line goes with it
    let j = i
    while (j > pos && plBlank(src.charCodeAt(j - 1))) j--
    const startOk = j === 0 || src.charCodeAt(j - 1) === 10
    let k = after
    while (k < src.length && (plBlank(src.charCodeAt(k)) || src.charCodeAt(k) === 13)) k++
    const endOk = k >= src.length || src.charCodeAt(k) === 10
    const tagLine = line
    line += plCountLines(inner)
    if (startOk && endOk) {
      if (j > pos) out.push({ kind: "text", text: src.slice(pos, j), line: pendLine })
      if (k < src.length) {
        pos = k + 1
        line++
      } else {
        pos = k
      }
      i = pos
    } else {
      if (i > pos) out.push({ kind: "text", text: src.slice(pos, i), line: pendLine })
      pos = after
      i = after
    }
    pendLine = line
    if (kind === "tag") out.push({ kind: "tag", text: plTrim(inner), line: tagLine })
  }
  if (pos < src.length) out.push({ kind: "text", text: src.slice(pos, src.length), line: pendLine })
  return out
}

// ---- reading the tags ----

// A name, or names joined by dots: a, a.b, loop.index
function plTplPath(s: string): boolean {
  if (s.length === 0) return false
  let pos = 0
  while (true) {
    let dot = plCharIndex(s, 46, pos)
    if (dot < 0) dot = s.length
    if (!plIsIdent(s.slice(pos, dot))) return false
    if (dot >= s.length) return true
    pos = dot + 1
  }
}

// A quoted text with no quote of the same kind inside. Returns the text without its quotes, or "\x00" when it is not one.
function plQuoted(s: string): string {
  if (s.length < 2) return "\x00"
  const q = s.charCodeAt(0)
  if ((q !== 34 && q !== 39) || s.charCodeAt(s.length - 1) !== q) return "\x00"
  const body = s.slice(1, s.length - 1)
  if (plCharIndex(body, q, 0) >= 0) return "\x00"
  return body
}

// The first word of a tag, and the rest.
function plWord(s: string): string {
  let i = 0
  while (i < s.length && !plBlank(s.charCodeAt(i))) i++
  return s.slice(0, i)
}

function plRest(s: string): string {
  return plTrim(s.slice(plWord(s).length, s.length))
}

function plTemplateName(file: string, line: number, name: string): void {
  if (name.length === 0 || name.length > 200) plFail(file, line, "a template name must be 1 to 200 characters")
  if (plHasControl(name) || name.charCodeAt(0) === 47 || name.charCodeAt(0) === 92 || plIndexFrom(name, "..", 0) >= 0 || plCharIndex(name, 92, 0) >= 0) {
    plFail(file, line, "the template name '" + name + "' must not start with / or hold \\ .. or a control byte")
  }
}

function plParseIf(file: string, line: number, rest: string, node: TNode): void {
  let r = rest
  if (plWord(r) === "not" && plTrim(plRest(r)).length > 0) {
    node.num = 1
    r = plRest(r)
  }
  const first = plWord(r)
  const after = plRest(r)
  if (after.length === 0) {
    if (!plTplPath(first)) plFail(file, line, "'if' needs a name, as in {% if user %}")
    node.text = first
    return
  }
  const op = plWord(after)
  const lit = plQuoted(plRest(after))
  if ((op !== "==" && op !== "!=") || lit === "\x00" || node.num === 1) {
    plFail(file, line, "'if' takes a name, 'not' and a name, or a name == or != a quoted text")
  }
  if (!plTplPath(first)) plFail(file, line, "'" + first + "' is not a name")
  node.text = first
  node.text2 = lit
  node.num = op === "==" ? 2 : 3
}

export function plParse(file: string, src: string): Template {
  const toks = plTokenize(file, src)
  const root = plNode("root", "", 1)
  const stack: TNode[] = [root]
  const inElse: boolean[] = [false]
  const blocks: TNode[] = []
  let parent = ""
  let seenContent = false
  let i = 0
  while (i < toks.length) {
    const t = toks[i]
    i++
    const top = stack[stack.length - 1]
    const into = inElse[inElse.length - 1] ? top.elseKids : top.kids
    if (t.kind === "text") {
      if (!plAllBlank(t.text) || stack.length > 1) seenContent = true
      into.push(plNode("text", t.text, t.line))
      continue
    }
    if (t.kind === "var" || t.kind === "raw") {
      seenContent = true
      if (!plTplPath(t.text)) plFail(file, t.line, "'" + t.text + "' is not a name; use letters, digits and _, with dots for fields")
      into.push(plNode(t.kind === "raw" ? "raw" : "var", t.text, t.line))
      continue
    }
    const word = plWord(t.text)
    const rest = plRest(t.text)
    if (word === "extends") {
      if (seenContent || parent !== "" || stack.length > 1) plFail(file, t.line, "{% extends %} must come first in the file, once")
      const name = plQuoted(rest)
      if (name === "\x00") plFail(file, t.line, "'extends' needs a quoted template name")
      plTemplateName(file, t.line, name)
      parent = name
      continue
    }
    seenContent = true
    if (word === "if") {
      const n = plNode("if", "", t.line)
      plParseIf(file, t.line, rest, n)
      into.push(n)
      stack.push(n)
      inElse.push(false)
    } else if (word === "for") {
      const inAt = plIndexFrom(rest, " in ", 0)
      const v = inAt < 0 ? "" : plTrim(rest.slice(0, inAt))
      const path = inAt < 0 ? "" : plTrim(rest.slice(inAt + 4, rest.length))
      if (!plIsIdent(v) || !plTplPath(path)) plFail(file, t.line, "'for' reads {% for item in list %}")
      if (v === "loop") plFail(file, t.line, "'loop' is the name of the loop information, so a loop variable cannot be called that")
      const n = plNode("for", v, t.line)
      n.text2 = path
      into.push(n)
      stack.push(n)
      inElse.push(false)
    } else if (word === "else") {
      if (rest.length > 0) plFail(file, t.line, "'else' takes nothing after it")
      if (stack.length < 2 || (top.kind !== "if" && top.kind !== "for")) plFail(file, t.line, "'else' is only allowed inside 'if' or 'for'")
      if (inElse[inElse.length - 1]) plFail(file, t.line, "this '" + top.kind + "' already has an 'else'")
      inElse[inElse.length - 1] = true
    } else if (word === "endif" || word === "endfor" || word === "endblock") {
      const want = word.slice(3, word.length)
      if (rest.length > 0 && !(word === "endblock" && rest === top.text)) plFail(file, t.line, "'" + word + "' takes nothing after it")
      if (stack.length < 2) plFail(file, t.line, "'" + word + "' has nothing to close")
      if (top.kind !== want) plFail(file, t.line, "'" + word + "' closes the '" + top.kind + "' from line " + top.line + ", which is still open")
      stack.pop()
      inElse.pop()
    } else if (word === "include") {
      const name = plQuoted(rest)
      if (name === "\x00") plFail(file, t.line, "'include' needs a quoted template name")
      plTemplateName(file, t.line, name)
      into.push(plNode("include", name, t.line))
    } else if (word === "block") {
      if (!plIsIdent(rest)) plFail(file, t.line, "'block' needs a name, as in {% block content %}")
      let b = 0
      while (b < blocks.length) {
        if (blocks[b].text === rest) plFail(file, t.line, "the block '" + rest + "' is already defined on line " + blocks[b].line)
        b++
      }
      const n = plNode("block", rest, t.line)
      blocks.push(n)
      into.push(n)
      stack.push(n)
      inElse.push(false)
    } else {
      plFail(file, t.line, "unknown tag '" + word + "'")
    }
  }
  if (stack.length > 1) {
    const open = stack[stack.length - 1]
    plFail(file, open.line, "'" + open.kind + "' is never closed")
  }
  if (parent !== "") {
    let k = 0
    while (k < root.kids.length) {
      const n = root.kids[k]
      if (n.kind !== "block" && !(n.kind === "text" && plAllBlank(n.text))) {
        plFail(file, n.line, "a template that extends another can only hold blocks, this has " + n.kind + " outside of one")
      }
      k++
    }
  }
  return { name: file, nodes: root.kids, parent: parent, blocks: blocks }
}

// ---- loading ----

function plFind(ts: Templates, name: string): number {
  let i = 0
  while (i < ts.tpls.length) {
    if (ts.tpls[i].name === name) return i
    i++
  }
  return -1
}

function plCollectIncludes(nodes: TNode[], out: TNode[]): void {
  let i = 0
  while (i < nodes.length) {
    const n = nodes[i]
    if (n.kind === "include") out.push(n)
    plCollectIncludes(n.kids, out)
    plCollectIncludes(n.elseKids, out)
    i++
  }
}

function plLoadNamed(ts: Templates, name: string, src: string, from: string): void {
  if (plFind(ts, name) >= 0) return
  let k = 0
  while (k < ts.loading.length) {
    if (ts.loading[k] === name) plFatal("the templates include or extend each other in a cycle: " + ts.loading.join(" -> ") + " -> " + name)
    k++
  }
  if (ts.loading.length >= 20) plFatal("templates include or extend each other more than 20 deep, at " + name)
  ts.loading.push(name)
  const tpl = plParse(name, src)
  const need: string[] = []
  const lines: number[] = []
  const files: string[] = []
  if (tpl.parent !== "") {
    need.push(tpl.parent)
    lines.push(1)
    files.push(name)
  }
  const incs: TNode[] = []
  plCollectIncludes(tpl.nodes, incs)
  let i = 0
  while (i < incs.length) {
    need.push(incs[i].text)
    lines.push(incs[i].line)
    files.push(name)
    i++
  }
  i = 0
  while (i < need.length) {
    plLoadFile(ts, need[i], files[i] + ":" + lines[i])
    i++
  }
  ts.loading.pop()
  ts.tpls.push(tpl)
}

function plLoadFile(ts: Templates, name: string, from: string): void {
  if (plFind(ts, name) >= 0) return
  const path = ts.dir + "/" + name
  if (!fileExists(path)) plFatal("the template '" + name + "' was not found at " + path + (from === "" ? "" : ", used at " + from))
  plLoadNamed(ts, name, readFile(path), from)
}

// Reads a template file and everything it includes or extends. Call it at start up, before the first request.
export function loadTemplate(ts: Templates, name: string): void {
  plTemplateName("loadTemplate", 0, name)
  plLoadFile(ts, name, "")
}

// Adds a template from text instead of a file, under a name. Files it includes are read from the directory.
export function addTemplate(ts: Templates, name: string, src: string): void {
  plTemplateName("addTemplate", 0, name)
  if (plFind(ts, name) >= 0) plFatal("the template '" + name + "' is already loaded")
  plLoadNamed(ts, name, src, "")
}

// ---- values ----

interface Value {
  kind: number        // 0 not found, 1 text, 2 list, 3 object
  str: string
  list: Context[]
  obj: Context
}

function plNone(): Value {
  const l: Context[] = []
  return { kind: 0, str: "", list: l, obj: newContext() }
}

function plWalkCtx(ctx: Context, path: string, from: number): Value {
  let cur = ctx
  let pos = from
  while (true) {
    const dot = plCharIndex(path, 46, pos)
    const seg = dot < 0 ? path.slice(pos, path.length) : path.slice(pos, dot)
    if (dot < 0) {
      let i = 0
      while (i < cur.names.length) {
        if (cur.names[i] === seg) return { kind: 1, str: cur.values[i], list: plNone().list, obj: cur }
        i++
      }
      i = 0
      while (i < cur.listNames.length) {
        if (cur.listNames[i] === seg) return { kind: 2, str: "", list: cur.lists[i], obj: cur }
        i++
      }
      i = 0
      while (i < cur.objNames.length) {
        if (cur.objNames[i] === seg) return { kind: 3, str: "", list: plNone().list, obj: cur.objs[i] }
        i++
      }
      return plNone()
    }
    let next = -1
    let j = 0
    while (j < cur.objNames.length) {
      if (cur.objNames[j] === seg) next = j
      j++
    }
    if (next < 0) return plNone()
    cur = cur.objs[next]
    pos = dot + 1
  }
}

// ---- drawing ----

interface RState {
  ts: Templates
  out: string[]
  root: Context
  scopeNames: string[]
  scopeCtx: Context[]
  ovNames: string[]
  ovBlocks: TNode[]
  depth: number
}

function plResolve(rs: RState, path: string): Value {
  const dot = plCharIndex(path, 46, 0)
  const head = dot < 0 ? path : path.slice(0, dot)
  let i = rs.scopeNames.length - 1
  while (i >= 0) {
    if (rs.scopeNames[i] === head) {
      if (dot < 0) return { kind: 3, str: "", list: plNone().list, obj: rs.scopeCtx[i] }
      return plWalkCtx(rs.scopeCtx[i], path, dot + 1)
    }
    i--
  }
  return plWalkCtx(rs.root, path, 0)
}

function plTruthy(v: Value): boolean {
  if (v.kind === 1) return v.str.length > 0
  if (v.kind === 2) return v.list.length > 0
  return v.kind === 3
}

function plTest(rs: RState, n: TNode): boolean {
  const v = plResolve(rs, n.text)
  if (n.num === 0) return plTruthy(v)
  if (n.num === 1) return !plTruthy(v)
  const same = v.kind === 1 && v.str === n.text2
  return n.num === 2 ? same : !same
}

function plPut(rs: RState, n: TNode): void {
  const v = plResolve(rs, n.text)
  if (v.kind === 1) {
    rs.out.push(n.kind === "raw" ? v.str : htmlEscape(v.str))
  } else if (rs.ts.strict) {
    rs.out.push(htmlEscape(v.kind === 0 ? "[[unknown variable: " + n.text + "]]" : "[[" + n.text + " is not text]]"))
  }
}

function plLoop(rs: RState, n: TNode): void {
  const v = plResolve(rs, n.text2)
  if (v.kind !== 2 || v.list.length === 0) {
    plNodes(rs, n.elseKids)
    return
  }
  const info = newContext()
  info.names.push("index")
  info.values.push("1")
  info.names.push("index0")
  info.values.push("0")
  info.names.push("first")
  info.values.push("true")
  info.names.push("last")
  info.values.push("")
  info.names.push("length")
  info.values.push("" + v.list.length)
  rs.scopeNames.push(n.text)
  rs.scopeCtx.push(v.list[0])
  rs.scopeNames.push("loop")
  rs.scopeCtx.push(info)
  const at = rs.scopeCtx.length - 2
  let i = 0
  while (i < v.list.length) {
    rs.scopeCtx[at] = v.list[i]
    info.values[0] = "" + (i + 1)
    info.values[1] = "" + i
    info.values[2] = i === 0 ? "true" : ""
    info.values[3] = i === v.list.length - 1 ? "true" : ""
    plNodes(rs, n.kids)
    i++
  }
  rs.scopeNames.pop()
  rs.scopeCtx.pop()
  rs.scopeNames.pop()
  rs.scopeCtx.pop()
}

function plNodes(rs: RState, nodes: TNode[]): void {
  let i = 0
  while (i < nodes.length) {
    const n = nodes[i]
    if (n.kind === "text") {
      rs.out.push(n.text)
    } else if (n.kind === "var" || n.kind === "raw") {
      plPut(rs, n)
    } else if (n.kind === "if") {
      plNodes(rs, plTest(rs, n) ? n.kids : n.elseKids)
    } else if (n.kind === "for") {
      plLoop(rs, n)
    } else if (n.kind === "include") {
      plDraw(rs, n.text)
    } else if (n.kind === "block") {
      let k = 0
      let used = false
      while (k < rs.ovNames.length) {
        if (rs.ovNames[k] === n.text) {
          plNodes(rs, rs.ovBlocks[k].kids)
          used = true
          break
        }
        k++
      }
      if (!used) plNodes(rs, n.kids)
    }
    i++
  }
}

// Draws one template into rs.out. When it extends another, the blocks of the child take the place of the
// parent's, and the parent at the top of the chain is the one drawn.
function plDraw(rs: RState, name: string): void {
  if (rs.depth > 40) plFatal("templates are nested more than 40 deep at " + name)
  let ti = plFind(rs.ts, name)
  if (ti < 0) plFatal("the template '" + name + "' is not loaded: call loadTemplate for it at start up")
  const savedNames = rs.ovNames
  const savedBlocks = rs.ovBlocks
  const names: string[] = []
  const blocks: TNode[] = []
  let guard = 0
  while (rs.ts.tpls[ti].parent !== "" && guard < 40) {
    const t = rs.ts.tpls[ti]
    let b = 0
    while (b < t.blocks.length) {
      let have = false
      let k = 0
      while (k < names.length) {
        if (names[k] === t.blocks[b].text) have = true
        k++
      }
      if (!have) {
        names.push(t.blocks[b].text)
        blocks.push(t.blocks[b])
      }
      b++
    }
    ti = plFind(rs.ts, t.parent)
    if (ti < 0) plFatal("the template '" + t.parent + "' is not loaded")
    guard++
  }
  rs.ovNames = names
  rs.ovBlocks = blocks
  rs.depth++
  plNodes(rs, rs.ts.tpls[ti].nodes)
  rs.depth--
  rs.ovNames = savedNames
  rs.ovBlocks = savedBlocks
}

// The text of a page.
export function renderString(ts: Templates, name: string, ctx: Context): string {
  const out: string[] = []
  const sn: string[] = []
  const sc: Context[] = []
  const on: string[] = []
  const ob: TNode[] = []
  const rs: RState = { ts: ts, out: out, root: ctx, scopeNames: sn, scopeCtx: sc, ovNames: on, ovBlocks: ob, depth: 0 }
  plDraw(rs, name)
  return out.join("")
}

// A 200 response with the page as HTML.
export function render(ts: Templates, name: string, ctx: Context): Response {
  return html(renderString(ts, name, ctx))
}

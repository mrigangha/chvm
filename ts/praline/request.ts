import { plCharIndex, plTrim, plLower, plIsDigits, plParseUint, plHasControl } from "./strings.ts"
import { plPathOk, plParsePairs, plMediaType } from "./decode.ts"

export interface Request {
  method: string
  path: string           // the path as sent, still percent-encoded
  query: string          // the text after "?", not decoded
  version: string
  headerNames: string[]  // lower case
  headerValues: string[]
  body: string
  argNames: string[]     // the query string, decoded
  argValues: string[]
  formNames: string[]    // a urlencoded body, decoded (empty for any other content type)
  formValues: string[]
  paramNames: string[]   // the <name> parts of the route that matched
  paramValues: string[]
  bad: number            // 0, or the status to answer with when the request is not valid
}

export function plBadRequest(code: number): Request {
  const none: string[] = []
  return {
    method: "", path: "", query: "", version: "", headerNames: none, headerValues: none, body: "",
    argNames: none, argValues: none, formNames: none, formValues: none, paramNames: none, paramValues: none, bad: code,
  }
}

// The text of the line from `from` to its line feed at `end`, without a carriage return before it.
function plLineText(s: string, from: number, end: number): string {
  let e = end
  if (e > from && s.charCodeAt(e - 1) === 13) e--
  return s.slice(from, e)
}

function plIsMethod(s: string): boolean {
  if (s.length === 0 || s.length > 20) return false
  let i = 0
  while (i < s.length) {
    const c = s.charCodeAt(i)
    if (c < 65 || c > 90) return false
    i++
  }
  return true
}

function plIsToken(s: string): boolean {
  if (s.length === 0) return false
  let i = 0
  while (i < s.length) {
    const c = s.charCodeAt(i)
    if (c <= 32 || c >= 127) return false
    i++
  }
  return true
}

// Reads one request from bytes that hold all of it. A request that cannot be served has a nonzero bad.
export function parseRequest(raw: string): Request {
  let end = plCharIndex(raw, 10, 0)
  if (end < 0) return plBadRequest(400)
  const line = plLineText(raw, 0, end)
  const sp1 = plCharIndex(line, 32, 0)
  if (sp1 <= 0) return plBadRequest(400)
  const sp2 = plCharIndex(line, 32, sp1 + 1)
  if (sp2 < 0) return plBadRequest(400)
  const method = line.slice(0, sp1)
  const target = line.slice(sp1 + 1, sp2)
  const version = line.slice(sp2 + 1, line.length)
  if (!plIsMethod(method)) return plBadRequest(400)
  if (target.length === 0 || target.charCodeAt(0) !== 47 || plHasControl(target)) return plBadRequest(400)
  if (version !== "HTTP/1.1" && version !== "HTTP/1.0") return plBadRequest(400)
  const q = plCharIndex(target, 63, 0)
  const path = q < 0 ? target : target.slice(0, q)
  const query = q < 0 ? "" : target.slice(q + 1, target.length)
  if (!plPathOk(path)) return plBadRequest(400)

  const hn: string[] = []
  const hv: string[] = []
  let haveLen = false
  let contentLength = 0
  let pos = end + 1
  while (true) {
    end = plCharIndex(raw, 10, pos)
    if (end < 0) return plBadRequest(400)
    const h = plLineText(raw, pos, end)
    pos = end + 1
    if (h.length === 0) break
    const colon = plCharIndex(h, 58, 0)
    if (colon <= 0) return plBadRequest(400)
    const name = plLower(h.slice(0, colon))
    if (!plIsToken(name)) return plBadRequest(400)
    const value = plTrim(h.slice(colon + 1, h.length))
    if (name === "content-length") {
      if (!plIsDigits(value) || value.length > 9) return plBadRequest(400)
      const n = plParseUint(value)
      if (haveLen && n !== contentLength) return plBadRequest(400)
      haveLen = true
      contentLength = n
    }
    if (name === "transfer-encoding") return plBadRequest(501)
    hn.push(name)
    hv.push(value)
  }
  let body = ""
  if (haveLen) {
    if (raw.length - pos < contentLength) return plBadRequest(400)
    body = raw.slice(pos, pos + contentLength)
  }
  const an: string[] = []
  const av: string[] = []
  plParsePairs(query, an, av)
  const fn: string[] = []
  const fv: string[] = []
  let k = 0
  while (k < hn.length) {
    if (hn[k] === "content-type" && plMediaType(hv[k]) === "application/x-www-form-urlencoded") plParsePairs(body, fn, fv)
    k++
  }
  const pn: string[] = []
  const pv: string[] = []
  return {
    method: method, path: path, query: query, version: version, headerNames: hn, headerValues: hv, body: body,
    argNames: an, argValues: av, formNames: fn, formValues: fv, paramNames: pn, paramValues: pv, bad: 0,
  }
}

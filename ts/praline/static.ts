import type { Response } from "./response.ts"
import { abort, addHeader, makeResponse } from "./response.ts"
import { mimeFor } from "./mime.ts"
import { percentDecode } from "./decode.ts"
import { plCharIndex, plHasControl } from "./strings.ts"
import { plFatal } from "./fatal.ts"
import { readFileSafe } from "../std/fs.ts"

// Static files. staticDir(app, "/static", "public") answers GET /static/anything with the file public/anything.
// An explicit route is tried first, so a route can override a file. A file is decoded once: %252e%252e is
// the file name "%2e%2e", not "..".
//
// What is refused, each with a 404 so a visitor cannot tell a missing file from a forbidden one (a control
// byte in the path is refused earlier still, as a 400 bad request):
//   .. in any segment (also as %2e%2e, and as a path that only ends up there after decoding once)
//   a backslash, a NUL or any control byte, an empty segment (//), a segment that starts with a dot
//   (so .git, .env and .htaccess are never served), and an absolute path
//   a name longer than 300 bytes, or deeper than 12 segments
//   a directory (index.html is served for one only when the route asks for it)
// A file larger than maxBytes (default 8 MiB) is a 404 too: it is read into memory whole.
// Symbolic links are followed by the operating system, and nothing here can tell that a name is one. A link inside
// the directory that points outside it serves the file it points to. Nobody who only sends requests can make a
// link, so this is a matter for whoever puts the files there: do not put a link to outside the directory in it.

export interface StaticConfig {
  prefix: string      // the URL part before the file name, such as "/static"
  dir: string         // the directory on disk
  maxBytes: number
  index: string       // the file served for the prefix itself or a path that ends in /, or "" for none
  maxAge: number      // seconds a browser may keep a file without asking again, 0 for never
}

export function staticConfig(prefix: string, dir: string): StaticConfig {
  return { prefix: prefix, dir: dir, maxBytes: 8388608, index: "", maxAge: 3600 }
}

// The file name below the directory for a request path, or "" when it must not be served.
export function plSafeName(rel: string): string {
  if (rel.length === 0 || rel.length > 300) return ""
  if (rel.charCodeAt(0) === 47) return ""
  let depth = 0
  let pos = 0
  while (true) {
    let end = plCharIndex(rel, 47, pos)
    if (end < 0) end = rel.length
    const seg = percentDecode(rel.slice(pos, end), false)
    if (seg.length === 0 || seg.length > 100) return ""
    if (plHasControl(seg)) return ""
    if (plCharIndex(seg, 92, 0) >= 0 || plCharIndex(seg, 47, 0) >= 0) return ""
    if (seg.charCodeAt(0) === 46) return ""
    depth++
    if (depth > 12) return ""
    if (end >= rel.length) break
    pos = end + 1
  }
  return percentDecode(rel, false)
}

// The weak validator for a file: its length and a sum of its bytes. It changes when the content does,
// and costs one pass over the bytes, which the read already made.
export function plEtag(data: string): string {
  let h = 5381
  let i = 0
  while (i < data.length) {
    h = (h * 33 + data.charCodeAt(i)) % 4294967296
    i++
  }
  return "\"" + data.length + "-" + h + "\""
}

function plMatchesEtag(header: string, etag: string): boolean {
  if (header.length === 0) return false
  let pos = 0
  while (pos < header.length) {
    let end = plCharIndex(header, 44, pos)
    if (end < 0) end = header.length
    let piece = header.slice(pos, end)
    let a = 0
    while (a < piece.length && piece.charCodeAt(a) === 32) a++
    piece = piece.slice(a, piece.length)
    if (piece === "*" || piece === etag || piece === "W/" + etag) return true
    pos = end + 1
  }
  return false
}

// The response for a file under cfg.dir, or abort(404). rel is the part of the request path after the prefix.
// A path that ends in / (or is empty) names the index file of that directory, when the config has one.
// A directory asked for without the slash is a 404.
export function staticFile(cfg: StaticConfig, rel: string, ifNoneMatch: string): Response {
  let name = ""
  if (rel.length === 0 || rel.charCodeAt(rel.length - 1) === 47) {
    if (cfg.index === "") return abort(404)
    if (rel.length === 0) {
      name = cfg.index
    } else {
      const base = plSafeName(rel.slice(0, rel.length - 1))
      if (base === "") return abort(404)
      name = base + "/" + cfg.index
    }
  } else {
    name = plSafeName(rel)
    if (name === "") return abort(404)
  }
  const f = readFileSafe(cfg.dir + "/" + name, cfg.maxBytes)
  if (f.code !== 0) return abort(404)
  const etag = plEtag(f.data)
  if (plMatchesEtag(ifNoneMatch, etag)) {
    const nm = makeResponse(304, mimeFor(name), "")
    addHeader(nm, "ETag", etag)
    return nm
  }
  const res = makeResponse(200, mimeFor(name), f.data)
  addHeader(res, "ETag", etag)
  addHeader(res, "X-Content-Type-Options", "nosniff")
  if (cfg.maxAge > 0) addHeader(res, "Cache-Control", "public, max-age=" + cfg.maxAge)
  return res
}

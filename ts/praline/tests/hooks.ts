import type { Request } from "../request.ts"
import type { Response } from "../response.ts"
import type { App } from "../app.ts"
import { newApp, route, handle, beforeRequest, afterRequest, onError } from "../app.ts"
import { text, next, abort, redirect, setHeader, addHeader, securityHeaders, status } from "../response.ts"
import { header } from "../input.ts"
import { plIndexFrom } from "../strings.ts"

let trace = ""

function home(req: Request): Response {
  trace += "[home]"
  return text("home")
}

function boom(req: Request): Response {
  trace += "[boom]"
  throw "route failed"
}

function admin(req: Request): Response {
  trace += "[admin]"
  return text("admin area")
}

function logBefore(req: Request): Response {
  trace += "[log " + req.method + " " + req.path + "]"
  return next()
}

function guard(req: Request): Response {
  if (req.path.slice(0, 6) === "/admin" && header(req, "x-token", "") !== "secret") {
    trace += "[denied]"
    return abort(403)
  }
  return next()
}

function oldSite(req: Request): Response {
  if (req.path === "/old") return redirect("/")
  return next()
}

function crashy(req: Request): Response {
  if (req.path === "/hook-crash") throw "hook broke"
  return next()
}

function stamp(req: Request, res: Response): void {
  setHeader(res, "X-Served-By", "praline")
  trace += "[stamp " + res.status + "]"
}

function twice(req: Request, res: Response): void {
  setHeader(res, "X-Served-By", "second")
}

function broken(req: Request, res: Response): void {
  trace += "[broken after]"
  throw "after hook broke"
}

function dup(req: Request, res: Response): void {
  addHeader(res, "X-Dup", "1")
  addHeader(res, "x-dup", "2")
  setHeader(res, "X-DUP", "only")
}

function page403(req: Request, code: number): Response {
  return status(text("custom 403"), code)
}

function show(app: App, label: string, raw: string): void {
  trace = ""
  const r = handle(app, raw)
  const at = r.indexOf("\r\n\r\n")
  const hs = r.slice(0, at)
  const body = r.slice(at + 4, r.length)
  console.log(label + ": " + hs.slice(9, hs.indexOf("\r\n")) + " | " + (body.length > 20 ? body.slice(0, 20) : body) + " | " + trace + headerSummary(hs))
}

function headerSummary(hs: string): string {
  let out = ""
  const names = ["X-Served-By", "X-Dup", "X-Content-Type-Options", "X-Frame-Options", "Location"]
  let i = 0
  while (i < names.length) {
    let pos = hs.indexOf("\r\n" + names[i] + ": ")
    let count = 0
    let first = ""
    while (pos >= 0) {
      count++
      if (first === "") {
        const from = pos + 4 + names[i].length
        const e = plIndexFrom(hs, "\r\n", from)
        first = hs.slice(from, e < 0 ? hs.length : e)
      }
      const nx = hs.slice(pos + 2, hs.length).indexOf("\r\n" + names[i] + ": ")
      pos = nx < 0 ? -1 : pos + 2 + nx
    }
    if (count > 0) out += " " + names[i] + "=" + first + (count > 1 ? "(x" + count + ")" : "")
    i++
  }
  return out
}

function main(): void {
  const app = newApp()
  route(app, "GET", "/", home)
  route(app, "GET", "/boom", boom)
  route(app, "GET", "/admin", admin)
  route(app, "GET", "/old", home)
  beforeRequest(app, logBefore)
  beforeRequest(app, guard)
  beforeRequest(app, oldSite)
  beforeRequest(app, crashy)
  afterRequest(app, stamp)
  afterRequest(app, securityHeaders)
  console.log("--- before hooks run in order, and any of them can end the request")
  show(app, "home", "GET / HTTP/1.1\r\n\r\n")
  show(app, "guarded without a token", "GET /admin HTTP/1.1\r\n\r\n")
  show(app, "guarded with a token", "GET /admin HTTP/1.1\r\nX-Token: secret\r\n\r\n")
  show(app, "guarded with a wrong token", "GET /admin HTTP/1.1\r\nX-Token: nope\r\n\r\n")
  show(app, "a hook redirects", "GET /old HTTP/1.1\r\n\r\n")
  show(app, "a hook throws", "GET /hook-crash HTTP/1.1\r\n\r\n")
  show(app, "unknown path still passes the hooks", "GET /nothing HTTP/1.1\r\n\r\n")
  show(app, "a route that throws", "GET /boom HTTP/1.1\r\n\r\n")
  console.log("--- a request that cannot be read skips the before hooks and still gets the after hooks")
  show(app, "garbage", "garbage\r\n\r\n")
  show(app, "bad method", "get / HTTP/1.1\r\n\r\n")
  console.log("--- after hooks")
  show(app, "head", "HEAD / HTTP/1.1\r\n\r\n")
  show(app, "405", "POST / HTTP/1.1\r\nContent-Length: 0\r\n\r\n")
  afterRequest(app, twice)
  show(app, "a later hook replaces a header", "GET / HTTP/1.1\r\n\r\n")
  afterRequest(app, broken)
  afterRequest(app, dup)
  show(app, "a hook that throws is skipped and the rest run", "GET / HTTP/1.1\r\n\r\n")
  onError(app, 403, page403)
  show(app, "an error page from onError gets the hooks too", "GET /admin HTTP/1.1\r\n\r\n")
  console.log("--- 200 requests through all hooks")
  let i = 0
  let ok = 0
  while (i < 200) {
    trace = ""
    const r = handle(app, i % 2 === 0 ? "GET / HTTP/1.1\r\n\r\n" : "GET /boom HTTP/1.1\r\n\r\n")
    if (r.slice(9, 12) === (i % 2 === 0 ? "200" : "500") && r.indexOf("X-Frame-Options: DENY") >= 0) ok++
    i++
  }
  console.log(ok)
}
main()

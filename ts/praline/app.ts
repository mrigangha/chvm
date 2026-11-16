import type { Request } from "./request.ts"
import type { Response } from "./response.ts"
import { parseRequest } from "./request.ts"
import type { StaticConfig } from "./static.ts"
import { abort, addHeader, errorResponse, next, serialize } from "./response.ts"
import { plLookup, plWalk, plPatternError, plShape } from "./router.ts"
import { staticConfig, staticFile } from "./static.ts"
import { header } from "./input.ts"
import { readFileSafe } from "../std/fs.ts"
import { plBadRequest } from "./request.ts"
import { plHas } from "./strings.ts"
import { plFatal } from "./fatal.ts"
import { printErr } from "../std/os.ts"

export interface App {
  methods: string[]
  patterns: string[]
  handlers: ((req: Request) => Response)[]
  errorCodes: number[]    // the statuses that have a page of the app's own
  errorHandlers: ((req: Request, code: number) => Response)[]
  lastError: string       // the reason for the last 500 caused by a handler, for tests and for the dev error page
  befores: ((req: Request) => Response)[]
  afters: ((req: Request, res: Response) => void)[]
  statics: StaticConfig[]
}

export function newApp(): App {
  const hs: ((req: Request) => Response)[] = []
  const ms: string[] = []
  const ps: string[] = []
  const ec: number[] = []
  const eh: ((req: Request, code: number) => Response)[] = []
  const bf: ((req: Request) => Response)[] = []
  const af: ((req: Request, res: Response) => void)[] = []
  const st: StaticConfig[] = []
  return { methods: ms, patterns: ps, handlers: hs, errorCodes: ec, errorHandlers: eh, lastError: "", befores: bf, afters: af, statics: st }
}

// A function that runs before every request that was read correctly, whatever it asks for. It returns next()
// to let the request go on, or any other response to end it there (a redirect, abort(403), a cached page).
// Hooks run in the order they were added. A hook that throws gives the request a 500.
export function beforeRequest(app: App, hook: (req: Request) => Response): void {
  app.befores.push(hook)
}

// A function that runs on every response, errors included, just before it is sent. It may change the response.
// A hook that throws is logged and skipped.
export function afterRequest(app: App, hook: (req: Request, res: Response) => void): void {
  app.afters.push(hook)
}

// Serves the files of a directory: GET and HEAD for prefix + "/" + name give dir + "/" + name. The prefix
// "/" serves the whole site. Routes are tried first, so a route can override a file. Returns the settings,
// so the caller can set index (the file for a path that ends in /), maxAge and maxBytes. See static.ts for
// everything that is refused.
export function staticDir(app: App, prefix: string, dir: string): StaticConfig {
  const bad = plPatternError(prefix)
  if (bad !== "") plFatal(bad)
  if (prefix.length > 1 && prefix.charCodeAt(prefix.length - 1) === 47) plFatal("the static prefix '" + prefix + "' must not end with /")
  if (prefix.indexOf("<") >= 0) plFatal("the static prefix '" + prefix + "' cannot have parameters")
  let i = 0
  while (i < app.statics.length) {
    if (app.statics[i].prefix === prefix) plFatal("the static prefix '" + prefix + "' is already set")
    i++
  }
  if (readFileSafe(dir, 0).code !== 21) plFatal("the static directory '" + dir + "' is not a directory that can be read")
  const cfg = staticConfig(prefix, dir)
  app.statics.push(cfg)
  return cfg
}

// A route set up wrong is a mistake in the program, so it stops the program at start up.
function plRouteError(msg: string): void {
  plFatal(msg)
}

// Sets the page for an error status: 404 for a path with no route, 405, 400 for a request that cannot be
// read, 500, or any status a handler gives to abort(). The function gets the request and the status.
// For a request that could not be read, the request holds empty fields, so such a page should not
// read from it.
export function onError(app: App, code: number, handler: (req: Request, code: number) => Response): void {
  if (Math.floor(code) !== code || code < 400 || code > 599) plRouteError("onError needs an error status from 400 to 599, not " + code)
  let i = 0
  while (i < app.errorCodes.length) {
    if (app.errorCodes[i] === code) plRouteError("the error page for " + code + " is already set")
    i++
  }
  app.errorCodes.push(code)
  app.errorHandlers.push(handler)
}

export function route(app: App, method: string, pattern: string, handler: (req: Request) => Response): void {
  if (method.length === 0) plRouteError("the method is empty")
  let i = 0
  while (i < method.length) {
    const c = method.charCodeAt(i)
    if (c < 65 || c > 90) plRouteError("the method '" + method + "' must be upper case letters")
    i++
  }
  const bad = plPatternError(pattern)
  if (bad !== "") plRouteError(bad)
  const shape = plShape(pattern)
  i = 0
  while (i < app.patterns.length) {
    if (app.methods[i] === method && plShape(app.patterns[i]) === shape) {
      plRouteError("the route " + method + " " + pattern + " clashes with " + app.patterns[i])
    }
    i++
  }
  app.methods.push(method)
  app.patterns.push(pattern)
  app.handlers.push(handler)
}

// The methods to list in an Allow header: HEAD is answered by GET.
function plAllowList(allow: string[]): string {
  const list: string[] = []
  let i = 0
  while (i < allow.length) {
    list.push(allow[i])
    i++
  }
  if (plHas(allow, "GET") && !plHas(allow, "HEAD")) list.push("HEAD")
  return list.join(", ")
}

// The response for an error status: the app's page for it when there is one, else the plain page.
// The headers that belong to the error itself (such as Allow) are kept from `res`. A page that gives
// a different status is not trusted: the plain page is used instead, so an error page cannot turn an
// error into a success by mistake.
function plErrorPage(app: App, req: Request, res: Response): Response {
  let i = 0
  while (i < app.errorCodes.length) {
    if (app.errorCodes[i] === res.status) {
      const page = app.errorHandlers[i](req, res.status)
      if (page.status !== res.status) return res
      let k = 0
      while (k < res.headerNames.length) {
        if (res.headerNames[k] === "Allow") addHeader(page, "Allow", res.headerValues[k])
        k++
      }
      return page
    }
    i++
  }
  return res
}

// The part of the path after a static prefix, or "\x00" when the path is not under it.
function plUnder(prefix: string, path: string): string {
  if (prefix === "/") return path.slice(1, path.length)
  if (path === prefix) return ""
  if (path.length > prefix.length && path.slice(0, prefix.length) === prefix && path.charCodeAt(prefix.length) === 47) {
    return path.slice(prefix.length + 1, path.length)
  }
  return "\x00"
}

// The static file for a GET or HEAD path, or a response with status 0 when no static directory covers it.
// A longer prefix wins, so /static/img can be a different directory from /static.
function plStatic(app: App, req: Request): Response {
  let best = -1
  let bestLen = -1
  let i = 0
  while (i < app.statics.length) {
    const rel = plUnder(app.statics[i].prefix, req.path)
    if (rel !== "\x00" && app.statics[i].prefix.length > bestLen) {
      best = i
      bestLen = app.statics[i].prefix.length
    }
    i++
  }
  if (best < 0) return next()
  return staticFile(app.statics[best], plUnder(app.statics[best].prefix, req.path), header(req, "if-none-match", ""))
}

// Runs the after hooks over a response. A hook that throws is logged and skipped, so one bad hook cannot
// turn every page into an error.
function plRunAfters(app: App, req: Request, res: Response): void {
  let i = 0
  while (i < app.afters.length) {
    try {
      app.afters[i](req, res)
    } catch (e: any) {
      const msg: string = e
      printErr("praline: an after hook failed: " + msg + "\n")
    }
    i++
  }
}

// What the route, the static directory or the error page gives, before the after hooks.
function plRespond(app: App, req: Request): Response {
  if (req.bad !== 0) return plErrorPage(app, req, errorResponse(req.bad))
  let k = 0
  while (k < app.befores.length) {
    const out = plRunHook(app, req, k)
    if (out.status !== 0) return out.aborted ? plErrorPage(app, req, out) : out
    k++
  }
  let lk = plLookup(app.methods, app.patterns, req.method, req.path)
  if (lk.index < 0 && req.method === "HEAD") lk = plLookup(app.methods, app.patterns, "GET", req.path)
  if (lk.index >= 0) {
    plWalk(app.patterns[lk.index], req.path, req.paramNames, req.paramValues, true)
    const out = plRunHandler(app, req, lk.index)
    return out.aborted ? plErrorPage(app, req, out) : out
  }
  if (req.method === "GET" || req.method === "HEAD") {
    const file = plStatic(app, req)
    if (file.status !== 0) return file.aborted ? plErrorPage(app, req, file) : file
  }
  if (lk.allow.length === 0) return plErrorPage(app, req, errorResponse(404))
  const res = errorResponse(405)
  addHeader(res, "Allow", plAllowList(lk.allow))
  return plErrorPage(app, req, res)
}

// Takes the bytes of one whole request and returns the bytes of the response.
export function handle(app: App, raw: string): string {
  const req = parseRequest(raw)
  const res = plRespond(app, req)
  if (res.status === 0) return serialize(plErrorPage(app, req, errorResponse(500)), false)
  plRunAfters(app, req, res)
  return serialize(res, req.method === "HEAD")
}

// Runs one before hook. A hook that throws gives the request a 500, like a handler.
function plRunHook(app: App, req: Request, index: number): Response {
  try {
    return app.befores[index](req)
  } catch (e: any) {
    const msg: string = e
    app.lastError = msg
    printErr("praline: " + req.method + " " + req.path + " before hook failed: " + msg + "\n")
    return abort(500)
  }
}

// Runs a handler. A handler that throws, or that makes a runtime check fail (an array index out of range,
// a pop from an empty array, a division by zero in the machine, running out of stack), does not stop the
// server: the request gets a 500 and the next request is served. The reason goes to the log, never to the
// client, so a visitor learns nothing about the program. A handler that says return abort(500) gets the
// same 500 page, so the page is the app's own when onError(app, 500, ...) is set.
function plRunHandler(app: App, req: Request, index: number): Response {
  try {
    return app.handlers[index](req)
  } catch (e: any) {
    const msg: string = e
    app.lastError = msg
    printErr("praline: " + req.method + " " + req.path + " failed: " + msg + "\n")
    return abort(500)
  }
}

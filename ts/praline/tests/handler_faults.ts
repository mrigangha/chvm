import type { Request } from "../request.ts"
import type { Response } from "../response.ts"
import type { App } from "../app.ts"
import { newApp, route, handle, onError } from "../app.ts"
import { text, status, abort } from "../response.ts"
import { param } from "../input.ts"

function fine(req: Request): Response {
  return text("fine")
}

function thrower(req: Request): Response {
  throw "the handler gave up"
}

function badIndex(req: Request): Response {
  const a: number[] = [1, 2, 3]
  return text("value " + a[3])
}

function badSlug(req: Request): Response {
  const a: string[] = ["x"]
  return text(a[0] + a[param(req, "n").length])
}

function emptyPop(req: Request): Response {
  const a: number[] = []
  a.pop()
  return text("popped")
}

function loops(n: number): number {
  return loops(n + 1) + 1
}

function overflow(req: Request): Response {
  return text("depth " + loops(0))
}

function throwsAfterWork(req: Request): Response {
  let total = 0
  let i = 0
  while (i < 50) {
    total += i
    i++
  }
  if (total > 100) throw "total " + total
  return text("ok")
}

function secret(req: Request): Response {
  throw "database password is hunter2"
}

function page500(req: Request, code: number): Response {
  return status(text("our page: something went wrong"), code)
}

function first(app: App, label: string, raw: string): void {
  const r = handle(app, raw)
  const body = r.slice(r.indexOf("\r\n\r\n") + 4, r.length)
  console.log(label + ": " + r.slice(0, r.indexOf("\r\n")) + " | " + (body.length > 0 && body.charCodeAt(body.length - 1) === 10 ? body.slice(0, body.length - 1) : body))
}

function main(): void {
  const app = newApp()
  route(app, "GET", "/fine", fine)
  route(app, "GET", "/throw", thrower)
  route(app, "GET", "/index", badIndex)
  route(app, "GET", "/slug/<n>", badSlug)
  route(app, "GET", "/pop", emptyPop)
  route(app, "GET", "/overflow", overflow)
  route(app, "GET", "/work", throwsAfterWork)
  route(app, "GET", "/secret", secret)
  first(app, "before", "GET /fine HTTP/1.1\r\n\r\n")
  first(app, "throw", "GET /throw HTTP/1.1\r\n\r\n")
  console.log("  reason: " + app.lastError)
  first(app, "index", "GET /index HTTP/1.1\r\n\r\n")
  console.log("  reason: " + app.lastError)
  first(app, "slug", "GET /slug/abc HTTP/1.1\r\n\r\n")
  console.log("  reason: " + app.lastError)
  first(app, "pop", "GET /pop HTTP/1.1\r\n\r\n")
  console.log("  reason: " + app.lastError)
  first(app, "overflow", "GET /overflow HTTP/1.1\r\n\r\n")
  console.log("  reason: " + app.lastError)
  first(app, "work", "GET /work HTTP/1.1\r\n\r\n")
  console.log("  reason: " + app.lastError)
  first(app, "secret not shown to the client", "GET /secret HTTP/1.1\r\n\r\n")
  first(app, "after", "GET /fine HTTP/1.1\r\n\r\n")
  first(app, "head", "HEAD /throw HTTP/1.1\r\n\r\n")
  let i = 0
  let ok = 0
  while (i < 300) {
    const r = handle(app, i % 3 === 0 ? "GET /throw HTTP/1.1\r\n\r\n" : "GET /fine HTTP/1.1\r\n\r\n")
    if (r.slice(9, 12) === (i % 3 === 0 ? "500" : "200")) ok++
    i++
  }
  console.log("300 mixed requests, right status for " + ok)
  onError(app, 500, page500)
  first(app, "own page", "GET /throw HTTP/1.1\r\n\r\n")
  first(app, "own page for index", "GET /index HTTP/1.1\r\n\r\n")
  first(app, "abort(500) uses it too", "GET /fine HTTP/1.1\r\n\r\n")
}
main()

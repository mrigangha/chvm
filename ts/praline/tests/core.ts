import type { Request } from "../request.ts"
import type { Response } from "../response.ts"
import type { App } from "../app.ts"
import { newApp, route, handle } from "../app.ts"
import { text, html, status, addHeader } from "../response.ts"

function home(req: Request): Response {
  return html("<h1>home</h1>")
}

function about(req: Request): Response {
  return text("about " + req.method + " " + req.path + " q=" + req.query)
}

function echo(req: Request): Response {
  return text("got " + req.body.length + ": " + req.body)
}

function gone(req: Request): Response {
  const r = status(text("gone"), 410)
  addHeader(r, "X-Test", "yes")
  return r
}

function evil(req: Request): Response {
  const r = text("x")
  addHeader(r, "X-A", "one\r\nInjected: 1")
  addHeader(r, "Content-Length", "999")
  return r
}

function show(label: string, s: string): void {
  console.log("== " + label)
  let out = ""
  let i = 0
  while (i < s.length) {
    const c = s.charCodeAt(i)
    if (c === 13) out += "\\r"
    else if (c === 10) out += "\\n\n"
    else out += String.fromCharCode(c)
    i++
  }
  console.log(out)
}

function req(label: string, app: App, raw: string): void {
  show(label, handle(app, raw))
}

function main(): void {
  const app = newApp()
  route(app, "GET", "/", home)
  route(app, "GET", "/about", about)
  route(app, "POST", "/about", about)
  route(app, "POST", "/echo", echo)
  route(app, "GET", "/gone", gone)
  route(app, "GET", "/evil", evil)

  req("home", app, "GET / HTTP/1.1\r\nHost: x\r\n\r\n")
  req("query", app, "GET /about?a=1&b=2 HTTP/1.1\r\nHost: x\r\n\r\n")
  req("post", app, "POST /about HTTP/1.1\r\nHost: x\r\nContent-Length: 0\r\n\r\n")
  req("echo", app, "POST /echo HTTP/1.1\r\nContent-Length: 5\r\n\r\nhello")
  req("echo longer than length", app, "POST /echo HTTP/1.1\r\nContent-Length: 3\r\n\r\nhello")
  req("echo short body", app, "POST /echo HTTP/1.1\r\nContent-Length: 9\r\n\r\nhello")
  req("custom status and header", app, "GET /gone HTTP/1.0\r\n\r\n")
  req("header injection", app, "GET /evil HTTP/1.1\r\n\r\n")
  req("head", app, "HEAD /about HTTP/1.1\r\n\r\n")
  req("not found", app, "GET /nope HTTP/1.1\r\n\r\n")
  req("wrong method", app, "DELETE /about HTTP/1.1\r\n\r\n")
  req("wrong method 2", app, "PUT /echo HTTP/1.1\r\n\r\n")
  req("bare line feeds", app, "GET / HTTP/1.1\nHost: x\n\n")
  req("mixed case header", app, "POST /echo HTTP/1.1\r\ncOnTeNt-LeNgTh: 2\r\n\r\nab")
}
main()

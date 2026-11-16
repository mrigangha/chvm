import type { Request } from "../request.ts"
import type { Response } from "../response.ts"
import type { App } from "../app.ts"
import { newApp, route, handle, onError } from "../app.ts"
import { text, html, status, addHeader, abort, redirect, redirectWith, makeResponse } from "../response.ts"
import { json, jsonString, jsonNumber, jsonBool, jsonNull, jsonArray, jsonObject } from "../json.ts"
import { cookie, setCookie, deleteCookie, cookieOptions } from "../cookies.ts"
import { htmlEscape } from "../escape.ts"
import { percentEncode, percentDecode } from "../decode.ts"
import { arg, param } from "../input.ts"

function api(req: Request): Response {
  const n: string[] = ["name", "n", "ok", "none", "list"]
  const v: string[] = [jsonString(arg(req, "name", "x")), jsonNumber(3), jsonBool(true), jsonNull(), jsonArray([jsonNumber(1), jsonString("two")])]
  return json(jsonObject(n, v))
}

function nums(req: Request): Response {
  const n: number[] = [0, -0, 1.5, -2, 1e21, 1e-7, 123456789012, 0 / 0, 1 / 0, -1 / 0]
  const parts: string[] = []
  let i = 0
  while (i < n.length) {
    parts.push(jsonNumber(n[i]))
    i++
  }
  return json(jsonArray(parts))
}

function strs(req: Request): Response {
  return json(jsonArray([jsonString("a\"b\\c"), jsonString("tab\there\nnew\rcr"), jsonString("\x01\x1f\x7f"), jsonString("</script>"), jsonString("")]))
}

function go(req: Request): Response {
  return redirect("/target?a=1&b=2")
}

function moved(req: Request): Response {
  return redirectWith("/new", 301)
}

function evilRedirect(req: Request): Response {
  return redirect("/x\r\nSet-Cookie: a=b")
}

function quoteRedirect(req: Request): Response {
  return redirect("/x\"><script>alert(1)</script>")
}

function missing(req: Request): Response {
  return abort(404)
}

function forbidden(req: Request): Response {
  return abort(403)
}

function teapot(req: Request): Response {
  return abort(418)
}

function login(req: Request): Response {
  const res = text("logged in")
  const o = cookieOptions()
  o.maxAge = 3600
  setCookie(res, "sid", arg(req, "v", "abc"), o)
  const o2 = cookieOptions()
  o2.path = "/admin"
  o2.secure = true
  o2.sameSite = "Strict"
  setCookie(res, "adm", "1", o2)
  return res
}

function logout(req: Request): Response {
  const res = text("bye")
  deleteCookie(res, "sid", cookieOptions())
  return res
}

function who(req: Request): Response {
  return text("sid=[" + cookie(req, "sid", "none") + "] theme=[" + cookie(req, "theme", "none") + "] Sid=[" + cookie(req, "Sid", "none") + "]")
}

function page404(req: Request, code: number): Response {
  return status(html("<h1>Nothing at " + htmlEscape(req.path) + "</h1>"), code)
}

function page500(req: Request, code: number): Response {
  return html("<h1>this page lies about its status</h1>")
}

function page403(req: Request, code: number): Response {
  return status(html("<h1>keep out</h1>"), code)
}

function page400(req: Request, code: number): Response {
  return status(text("bad request page, path is [" + req.path + "]"), code)
}

function page405(req: Request, code: number): Response {
  return status(text("wrong method"), code)
}

function boom(req: Request): Response {
  return abort(500)
}

function escaped(req: Request): Response {
  return html(htmlEscape(arg(req, "s", "")))
}

function show(label: string, s: string): void {
  let out = ""
  let i = 0
  while (i < s.length) {
    const c = s.charCodeAt(i)
    if (c === 92) out += "\\\\"
    else if (c === 13) out += "\\r"
    else if (c === 10) out += "\\n"
    else if (c > 126 || c < 32) out += "<" + c + ">"
    else out += String.fromCharCode(c)
    i++
  }
  console.log(label + ": " + out)
}

function tryit(app: App, label: string, raw: string): void {
  show(label, handle(app, raw))
}

function main(): void {
  const app = newApp()
  route(app, "GET", "/api", api)
  route(app, "GET", "/nums", nums)
  route(app, "GET", "/strs", strs)
  route(app, "GET", "/go", go)
  route(app, "GET", "/moved", moved)
  route(app, "GET", "/evil", evilRedirect)
  route(app, "GET", "/quote", quoteRedirect)
  route(app, "GET", "/missing", missing)
  route(app, "GET", "/forbidden", forbidden)
  route(app, "GET", "/teapot", teapot)
  route(app, "GET", "/login", login)
  route(app, "GET", "/logout", logout)
  route(app, "GET", "/who", who)
  route(app, "GET", "/boom", boom)
  route(app, "GET", "/escaped", escaped)

  console.log("--- json")
  tryit(app, "object", "GET /api HTTP/1.1\r\n\r\n")
  tryit(app, "name needs escape", "GET /api?name=a%22b%0Ac%5Cd HTTP/1.1\r\n\r\n")
  tryit(app, "numbers", "GET /nums HTTP/1.1\r\n\r\n")
  tryit(app, "strings", "GET /strs HTTP/1.1\r\n\r\n")

  console.log("--- redirect")
  tryit(app, "go", "GET /go HTTP/1.1\r\n\r\n")
  tryit(app, "moved", "GET /moved HTTP/1.1\r\n\r\n")
  tryit(app, "header injection in location", "GET /evil HTTP/1.1\r\n\r\n")
  tryit(app, "html injection in body", "GET /quote HTTP/1.1\r\n\r\n")

  console.log("--- abort and default pages")
  tryit(app, "abort 404", "GET /missing HTTP/1.1\r\n\r\n")
  tryit(app, "abort 403", "GET /forbidden HTTP/1.1\r\n\r\n")
  tryit(app, "abort 418", "GET /teapot HTTP/1.1\r\n\r\n")
  tryit(app, "abort 500", "GET /boom HTTP/1.1\r\n\r\n")

  console.log("--- cookies")
  tryit(app, "login", "GET /login HTTP/1.1\r\n\r\n")
  tryit(app, "login value needs encoding", "GET /login?v=a%3Bb%20c%2Cd%22e%5Cf%0Ag%C3%A9 HTTP/1.1\r\n\r\n")
  tryit(app, "logout", "GET /logout HTTP/1.1\r\n\r\n")
  tryit(app, "read", "GET /who HTTP/1.1\r\nCookie: sid=abc123; theme=dark\r\n\r\n")
  tryit(app, "read case sensitive", "GET /who HTTP/1.1\r\nCookie: sid=one; Sid=two\r\n\r\n")
  tryit(app, "read encoded", "GET /who HTTP/1.1\r\nCookie: sid=a%3Bb%20c\r\n\r\n")
  tryit(app, "read quoted", "GET /who HTTP/1.1\r\nCookie: sid=\"quoted\"\r\n\r\n")
  tryit(app, "read none", "GET /who HTTP/1.1\r\n\r\n")
  tryit(app, "read two headers", "GET /who HTTP/1.1\r\nCookie: theme=a\r\nCookie: sid=b\r\n\r\n")
  tryit(app, "read junk", "GET /who HTTP/1.1\r\nCookie: ;;; =x; sid; sid=ok;;\r\n\r\n")
  tryit(app, "read first wins", "GET /who HTTP/1.1\r\nCookie: sid=first; sid=second\r\n\r\n")

  console.log("--- escape")
  tryit(app, "plain", "GET /escaped?s=hello HTTP/1.1\r\n\r\n")
  tryit(app, "all five", "GET /escaped?s=%26%3C%3E%22%27 HTTP/1.1\r\n\r\n")
  tryit(app, "script", "GET /escaped?s=%3Cscript%3Ealert(1)%3C%2Fscript%3E HTTP/1.1\r\n\r\n")
  tryit(app, "high bytes kept", "GET /escaped?s=%C3%A9%3C HTTP/1.1\r\n\r\n")

  console.log("--- encode and decode")
  const raw = "a b;c,d\"e\\f\r\ng\xc3\xa9~-._09AZaz%"
  const enc = percentEncode(raw)
  show("encoded", enc)
  console.log("round trip " + (percentDecode(enc, false) === raw))
  console.log("plain unchanged " + (percentEncode("abc-123") === "abc-123"))

  console.log("--- error pages")
  const app2 = newApp()
  route(app2, "GET", "/ok", api)
  route(app2, "GET", "/missing", missing)
  route(app2, "GET", "/forbidden", forbidden)
  route(app2, "GET", "/boom", boom)
  route(app2, "POST", "/post", api)
  route(app2, "GET", "/teapot", teapot)
  onError(app2, 404, page404)
  onError(app2, 403, page403)
  onError(app2, 500, page500)
  onError(app2, 400, page400)
  onError(app2, 405, page405)
  tryit(app2, "no route", "GET /nothing%20here HTTP/1.1\r\n\r\n")
  tryit(app2, "no route escaped", "GET /%3Cb%3E HTTP/1.1\r\n\r\n")
  tryit(app2, "abort uses page", "GET /missing HTTP/1.1\r\n\r\n")
  tryit(app2, "abort 403 page", "GET /forbidden HTTP/1.1\r\n\r\n")
  tryit(app2, "page with wrong status is dropped", "GET /boom HTTP/1.1\r\n\r\n")
  tryit(app2, "a route that works", "GET /ok HTTP/1.1\r\n\r\n")
  tryit(app2, "no page for 418", "GET /teapot HTTP/1.1\r\n\r\n")
  tryit(app2, "405 keeps Allow", "GET /post HTTP/1.1\r\n\r\n")
  tryit(app2, "head 405", "HEAD /post HTTP/1.1\r\n\r\n")
  tryit(app2, "bad request page", "garbage\r\n\r\n")
  tryit(app2, "head not found", "HEAD /nope HTTP/1.1\r\n\r\n")
}
main()

import type { Request } from "../request.ts"
import type { Response } from "../response.ts"
import type { App } from "../app.ts"
import { newApp, route, handle } from "../app.ts"
import { text } from "../response.ts"
import { param, paramInt, arg, argAll, form, formAll, header } from "../input.ts"

function blog(req: Request): Response {
  return text("blog slug=[" + param(req, "slug") + "]")
}

function user(req: Request): Response {
  return text("user id=" + paramInt(req, "id") + " plus1=" + (paramInt(req, "id") + 1))
}

function me(req: Request): Response {
  return text("me")
}

function userName(req: Request): Response {
  return text("username [" + param(req, "name") + "]")
}

function named(req: Request): Response {
  return text("named [" + param(req, "name") + "]")
}

function two(req: Request): Response {
  return text("two [" + param(req, "a") + "] [" + param(req, "b") + "]")
}

function search(req: Request): Response {
  return text("q=[" + arg(req, "q", "none") + "] page=[" + arg(req, "page", "1") + "] all=[" + argAll(req, "t").join("|") + "]")
}

function contact(req: Request): Response {
  return text("name=[" + form(req, "name", "?") + "] msg=[" + form(req, "msg", "?") + "] tags=[" + formAll(req, "tag").join("|") + "]")
}

function agent(req: Request): Response {
  return text("agent=[" + header(req, "User-Agent", "none") + "] x=[" + header(req, "X-Missing", "none") + "]")
}

// Bytes above 127 are written as codes, because node prints a string as UTF-8 and chvm prints the bytes.
function safe(s: string): string {
  let out = ""
  let i = 0
  while (i < s.length) {
    const c = s.charCodeAt(i)
    out += c > 126 ? "<" + c + ">" : String.fromCharCode(c)
    i++
  }
  return out
}

function files(req: Request): Response {
  return text("file [" + safe(param(req, "name")) + "]")
}

function body(label: string, s: string): void {
  const at = s.indexOf("\r\n\r\n")
  const first = s.slice(0, s.indexOf("\r\n"))
  console.log(label + ": " + first + " | " + (at < 0 ? "" : s.slice(at + 4, s.length)))
}

function go(app: App, label: string, raw: string): void {
  body(label, handle(app, raw))
}

function main(): void {
  const app = newApp()
  route(app, "GET", "/blog/<slug>", blog)
  route(app, "GET", "/user/<int:id>", user)
  route(app, "GET", "/user/me", me)
  route(app, "GET", "/user/<name>", userName)
  route(app, "GET", "/hello/<name>", named)
  route(app, "GET", "/pair/<a>/x/<b>", two)
  route(app, "GET", "/search", search)
  route(app, "POST", "/contact", contact)
  route(app, "GET", "/agent", agent)
  route(app, "GET", "/files/<name>", files)
  route(app, "POST", "/blog/<slug>", blog)

  go(app, "slug", "GET /blog/hello-world HTTP/1.1\r\n\r\n")
  go(app, "slug encoded", "GET /blog/a%20b%2Fc HTTP/1.1\r\n\r\n")
  go(app, "slug plus stays", "GET /blog/a+b HTTP/1.1\r\n\r\n")
  go(app, "slug empty", "GET /blog/ HTTP/1.1\r\n\r\n")
  go(app, "slug missing", "GET /blog HTTP/1.1\r\n\r\n")
  go(app, "slug extra segment", "GET /blog/a/b HTTP/1.1\r\n\r\n")
  go(app, "slug trailing slash", "GET /blog/a/ HTTP/1.1\r\n\r\n")
  go(app, "int", "GET /user/42 HTTP/1.1\r\n\r\n")
  go(app, "int zero padded", "GET /user/007 HTTP/1.1\r\n\r\n")
  go(app, "int not digits falls to name", "GET /user/abc HTTP/1.1\r\n\r\n")
  go(app, "int negative falls to name", "GET /user/-5 HTTP/1.1\r\n\r\n")
  go(app, "int too long falls to name", "GET /user/1234567890 HTTP/1.1\r\n\r\n")
  go(app, "int nine digits", "GET /user/999999999 HTTP/1.1\r\n\r\n")
  go(app, "int encoded digits", "GET /user/%34%32 HTTP/1.1\r\n\r\n")
  go(app, "literal beats param", "GET /user/me HTTP/1.1\r\n\r\n")
  go(app, "two params", "GET /pair/one/x/two HTTP/1.1\r\n\r\n")
  go(app, "two params wrong literal", "GET /pair/one/y/two HTTP/1.1\r\n\r\n")
  go(app, "method on param route", "DELETE /blog/x HTTP/1.1\r\n\r\n")
  go(app, "post param route", "POST /blog/x HTTP/1.1\r\n\r\n")
  go(app, "head param route", "HEAD /blog/x HTTP/1.1\r\n\r\n")
  go(app, "encoded slash is one segment", "GET /files/a%2Fb HTTP/1.1\r\n\r\n")
  go(app, "dot dot is just text", "GET /files/.. HTTP/1.1\r\n\r\n")
  go(app, "encoded dot dot", "GET /files/%2e%2e HTTP/1.1\r\n\r\n")
  go(app, "encoded nul", "GET /files/a%00b HTTP/1.1\r\n\r\n")
  go(app, "encoded newline", "GET /files/a%0Ab HTTP/1.1\r\n\r\n")
  go(app, "bad percent", "GET /files/a%zz HTTP/1.1\r\n\r\n")
  go(app, "short percent", "GET /files/a%4 HTTP/1.1\r\n\r\n")
  go(app, "percent at end", "GET /files/a% HTTP/1.1\r\n\r\n")
  go(app, "high byte", "GET /files/%ff%fe HTTP/1.1\r\n\r\n")

  go(app, "query", "GET /search?q=hello&page=2 HTTP/1.1\r\n\r\n")
  go(app, "query none", "GET /search HTTP/1.1\r\n\r\n")
  go(app, "query encoded", "GET /search?q=a%20b+c%26d%3De HTTP/1.1\r\n\r\n")
  go(app, "query repeated", "GET /search?t=1&t=2&t=3&q=x HTTP/1.1\r\n\r\n")
  go(app, "query no value", "GET /search?q&page= HTTP/1.1\r\n\r\n")
  go(app, "query empty pieces", "GET /search?&&q=a&& HTTP/1.1\r\n\r\n")
  go(app, "query value with equals", "GET /search?q=a=b=c HTTP/1.1\r\n\r\n")
  go(app, "query bad percent", "GET /search?q=100%&page=%zz HTTP/1.1\r\n\r\n")
  go(app, "query question inside", "GET /search?q=what?now HTTP/1.1\r\n\r\n")

  go(app, "form", "POST /contact HTTP/1.1\r\nContent-Type: application/x-www-form-urlencoded\r\nContent-Length: 28\r\n\r\nname=Ann+Lee&msg=hi%21&tag=a")
  go(app, "form charset", "POST /contact HTTP/1.1\r\nContent-Type: Application/X-WWW-Form-Urlencoded; charset=UTF-8\r\nContent-Length: 10\r\n\r\nname=Bob&x")
  go(app, "form repeated", "POST /contact HTTP/1.1\r\nContent-Type: application/x-www-form-urlencoded\r\nContent-Length: 17\r\n\r\ntag=a&tag=b&tag=c")
  go(app, "form wrong type", "POST /contact HTTP/1.1\r\nContent-Type: text/plain\r\nContent-Length: 9\r\n\r\nname=Carl")
  go(app, "form no type", "POST /contact HTTP/1.1\r\nContent-Length: 9\r\n\r\nname=Carl")
  go(app, "form empty", "POST /contact HTTP/1.1\r\nContent-Type: application/x-www-form-urlencoded\r\nContent-Length: 0\r\n\r\n")
  go(app, "form query not mixed", "POST /contact?name=Q HTTP/1.1\r\nContent-Type: application/x-www-form-urlencoded\r\nContent-Length: 8\r\n\r\nmsg=body")

  go(app, "header", "GET /agent HTTP/1.1\r\nUser-Agent: curl/8\r\n\r\n")
  go(app, "header lower", "GET /agent HTTP/1.1\r\nuser-agent: lower\r\n\r\n")
  go(app, "header upper", "GET /agent HTTP/1.1\r\nUSER-AGENT:   spaced   \r\n\r\n")
  go(app, "header none", "GET /agent HTTP/1.1\r\n\r\n")
  go(app, "header repeated takes first", "GET /agent HTTP/1.1\r\nUser-Agent: one\r\nUser-Agent: two\r\n\r\n")
}
main()

import type { Request } from "../request.ts"
import type { Response } from "../response.ts"
import type { App } from "../app.ts"
import { newApp, route, handle } from "../app.ts"
import { text } from "../response.ts"
import { param, arg, form } from "../input.ts"

function slug(req: Request): Response {
  return text("slug " + param(req, "s").length)
}

function q(req: Request): Response {
  return text("q " + arg(req, "a", "").length + " " + form(req, "f", "").length)
}

// Builds the text with one join, so the test itself does not use memory in proportion to n squared.
function repeat(s: string, n: number): string {
  const parts: string[] = []
  let i = 0
  while (i < n) {
    parts.push(s)
    i++
  }
  return parts.join("")
}

function code(raw: string, app: App): string {
  const r = handle(app, raw)
  return r.slice(9, 12) + " " + r.slice(r.indexOf("\r\n\r\n") + 4, r.length).slice(0, 14)
}

function main(): void {
  const app = newApp()
  route(app, "GET", "/s/<s>", slug)
  route(app, "POST", "/q", q)
  console.log(code("GET /s/" + repeat("a", 5000) + " HTTP/1.1\r\n\r\n", app))
  console.log(code("GET /s/" + repeat("%41", 3000) + " HTTP/1.1\r\n\r\n", app))
  console.log(code("GET /s/" + repeat("%", 2000) + " HTTP/1.1\r\n\r\n", app))
  console.log(code("GET /s/" + repeat("%4", 1000) + " HTTP/1.1\r\n\r\n", app))
  console.log(code("GET " + repeat("/", 3000) + " HTTP/1.1\r\n\r\n", app))
  console.log(code("GET /s" + repeat("/x", 3000) + " HTTP/1.1\r\n\r\n", app))
  console.log(code("GET /s/" + repeat("x/", 500) + " HTTP/1.1\r\n\r\n", app))
  console.log(code("POST /q?a=" + repeat("+", 4000) + " HTTP/1.1\r\n\r\n", app))
  console.log(code("POST /q?" + repeat("&", 4000) + " HTTP/1.1\r\n\r\n", app))
  console.log(code("POST /q?" + repeat("a=1&", 1000) + " HTTP/1.1\r\n\r\n", app))
  console.log(code("POST /q?" + repeat("=", 2000) + " HTTP/1.1\r\n\r\n", app))
  const body = "f=" + repeat("%7e", 5000)
  console.log(code("POST /q HTTP/1.1\r\nContent-Type: application/x-www-form-urlencoded\r\nContent-Length: " + body.length + "\r\n\r\n" + body, app))
  const pairs = repeat("k=v&", 5000)
  console.log(code("POST /q HTTP/1.1\r\nContent-Type: application/x-www-form-urlencoded\r\nContent-Length: " + pairs.length + "\r\n\r\n" + pairs, app))
  console.log(code("POST /q HTTP/1.1\r\n" + repeat("X-A: b\r\n", 500) + "Content-Length: 0\r\n\r\n", app))
}
main()

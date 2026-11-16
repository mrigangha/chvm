import type { Request } from "../request.ts"
import type { Response } from "../response.ts"
import type { App } from "../app.ts"
import { newApp, route, handle } from "../app.ts"
import { text } from "../response.ts"

function ok(req: Request): Response {
  return text("ok " + req.method + " " + req.path)
}

function firstLine(s: string): string {
  let i = 0
  while (i < s.length && s.charCodeAt(i) !== 13) i++
  return s.slice(0, i)
}

function tryit(app: App, label: string, raw: string): void {
  console.log(label + ": " + firstLine(handle(app, raw)))
}

function main(): void {
  const app = newApp()
  route(app, "GET", "/", ok)
  route(app, "POST", "/p", ok)
  tryit(app, "empty", "")
  tryit(app, "no line feed", "GET / HTTP/1.1")
  tryit(app, "one word", "GET\r\n\r\n")
  tryit(app, "two words", "GET /\r\n\r\n")
  tryit(app, "empty method", " / HTTP/1.1\r\n\r\n")
  tryit(app, "lower case method", "get / HTTP/1.1\r\n\r\n")
  tryit(app, "digit in method", "G3T / HTTP/1.1\r\n\r\n")
  tryit(app, "no leading slash", "GET x HTTP/1.1\r\n\r\n")
  tryit(app, "absolute url", "GET http://a/ HTTP/1.1\r\n\r\n")
  tryit(app, "http 2", "GET / HTTP/2.0\r\n\r\n")
  tryit(app, "http 0.9", "GET / HTTP/0.9\r\n\r\n")
  tryit(app, "no version", "GET / \r\n\r\n")
  tryit(app, "control in path", "GET /a\x01b HTTP/1.1\r\n\r\n")
  tryit(app, "nul in path", "GET /a\0b HTTP/1.1\r\n\r\n")
  tryit(app, "header no colon", "GET / HTTP/1.1\r\nHost x\r\n\r\n")
  tryit(app, "header empty name", "GET / HTTP/1.1\r\n: x\r\n\r\n")
  tryit(app, "header space in name", "GET / HTTP/1.1\r\nBad Name: x\r\n\r\n")
  tryit(app, "header never ends", "GET / HTTP/1.1\r\nHost: x\r\n")
  tryit(app, "length not a number", "POST /p HTTP/1.1\r\nContent-Length: abc\r\n\r\n")
  tryit(app, "length negative", "POST /p HTTP/1.1\r\nContent-Length: -1\r\n\r\n")
  tryit(app, "length empty", "POST /p HTTP/1.1\r\nContent-Length:\r\n\r\n")
  tryit(app, "length huge", "POST /p HTTP/1.1\r\nContent-Length: 99999999999\r\n\r\n")
  tryit(app, "length too long for body", "POST /p HTTP/1.1\r\nContent-Length: 50\r\n\r\nhi")
  tryit(app, "two lengths differ", "POST /p HTTP/1.1\r\nContent-Length: 1\r\nContent-Length: 2\r\n\r\nab")
  tryit(app, "two lengths same", "POST /p HTTP/1.1\r\nContent-Length: 2\r\nContent-Length: 2\r\n\r\nab")
  tryit(app, "chunked", "POST /p HTTP/1.1\r\nTransfer-Encoding: chunked\r\n\r\n0\r\n\r\n")
  tryit(app, "path traversal text", "GET /../etc/passwd HTTP/1.1\r\n\r\n")
  tryit(app, "path with spaces in value", "GET / HTTP/1.1\r\nX:   a b   \r\n\r\n")
  tryit(app, "extra body no length", "GET / HTTP/1.1\r\n\r\nstuff")
  tryit(app, "binary garbage", "\xff\xfe\x00\x01\x02\r\n\r\n")
  tryit(app, "only newlines", "\n\n\n")
  tryit(app, "crlf only", "\r\n\r\n")
  tryit(app, "very long path", "GET /" + "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" + " HTTP/1.1\r\n\r\n")
}
main()

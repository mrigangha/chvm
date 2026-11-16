import type { Request } from "../request.ts"
import type { Response } from "../response.ts"
import type { App } from "../app.ts"
import { newApp, route, handle, staticDir } from "../app.ts"
import { text } from "../response.ts"
import { plIndexFrom } from "../strings.ts"

function over(req: Request): Response {
  return text("a route beats a file")
}

function show(label: string, s: string): void {
  const head = s.slice(0, s.indexOf("\r\n"))
  const at = s.indexOf("\r\n\r\n")
  const body = s.slice(at + 4, s.length)
  const hs = s.slice(0, at)
  let flags = ""
  if (hs.indexOf("ETag:") >= 0) flags += " etag"
  if (hs.indexOf("Cache-Control: public, max-age=") >= 0) flags += " cache"
  if (hs.indexOf("nosniff") >= 0) flags += " nosniff"
  const ct = hs.indexOf("Content-Type: ")
  const ctEnd0 = plIndexFrom(hs, "\r\n", ct)
  const ctEnd = ctEnd0 < 0 ? hs.length : ctEnd0
  let leak = ""
  if (body.indexOf("SECRET") >= 0 || body.indexOf("secret in") >= 0 || body.indexOf("dot file") >= 0) leak = " LEAK"
  console.log(label + ": " + head.slice(9, head.length) + " [" + hs.slice(ct + 14, ctEnd) + "] " + body.length + " bytes" + flags + leak)
}

function go(app: App, label: string, target: string): void {
  show(label, handle(app, "GET " + target + " HTTP/1.1\r\n\r\n"))
}

function many(s: string, n: number): string {
  const parts: string[] = []
  let i = 0
  while (i < n) {
    parts.push(s)
    i++
  }
  return parts.join("")
}

function main(): void {
  const app = newApp()
  const cfg = staticDir(app, "/static", "praline/tests/public")
  cfg.index = "index.html"
  route(app, "GET", "/static/over.txt", over)
  const root = newApp()
  const rootCfg = staticDir(root, "/", "praline/tests/public")
  rootCfg.index = "index.html"
  const noIndex = newApp()
  staticDir(noIndex, "/", "praline/tests/public")

  console.log("--- files")
  go(app, "html", "/static/sub/page.html")
  go(app, "css", "/static/style.css")
  go(app, "js", "/static/app.js")
  go(app, "txt", "/static/notes.txt")
  go(app, "png", "/static/img/bytes.png")
  go(app, "upper case extension", "/static/UPPER.PNG")
  go(app, "no extension", "/static/README")
  go(app, "empty file", "/static/empty.txt")
  go(app, "space", "/static/a%20b.txt")
  go(app, "percent in the name", "/static/50%25.txt")
  go(app, "dots in the middle of a name", "/static/a..b.txt")
  go(app, "route first", "/static/over.txt")
  console.log("--- index and directories")
  go(app, "prefix alone", "/static")
  go(app, "prefix slash", "/static/")
  go(app, "sub index", "/static/sub/")
  go(app, "dir without slash", "/static/sub")
  go(app, "missing", "/static/nope.txt")
  go(app, "other prefix", "/other/style.css")
  go(app, "prefix as a word", "/staticx/style.css")
  console.log("--- attacks (every one must be a 404, or a 400 for a control byte, and none may leak)")
  go(app, "dot dot", "/static/../outside.txt")
  go(app, "dot dot in the middle", "/static/sub/../style.css")
  go(app, "encoded dot dot", "/static/%2e%2e/outside.txt")
  go(app, "encoded dot dot upper", "/static/%2E%2E/outside.txt")
  go(app, "half encoded dot dot", "/static/.%2e/outside.txt")
  go(app, "encoded slash", "/static/..%2foutside.txt")
  go(app, "encoded slash upper", "/static/..%2Foutside.txt")
  go(app, "encoded slash in a name", "/static/sub%2fpage.html")
  go(app, "backslash", "/static/..\\outside.txt")
  go(app, "encoded backslash", "/static/..%5coutside.txt")
  go(app, "double encoded", "/static/%252e%252e/outside.txt")
  go(app, "double slash", "/static//style.css")
  go(app, "leading dot file", "/static/.env")
  go(app, "dot directory", "/static/.hidden/key.txt")
  go(app, "encoded dot file", "/static/%2eenv")
  go(app, "dot only", "/static/.")
  go(app, "dot segment", "/static/./style.css")
  go(app, "absolute", "/static//etc/passwd")
  go(app, "nul", "/static/style.css%00.png")
  go(app, "newline", "/static/style.css%0a")
  go(app, "tab", "/static/a%09b")
  go(app, "unicode dots", "/static/%c0%ae%c0%ae/outside.txt")
  go(app, "long name", "/static/" + many("a", 400))
  go(app, "deep", "/static/a/b/c/d/e/f/g/h/i/j/k/l/m/n/style.css")
  go(app, "trailing dot dot", "/static/sub/..")
  go(app, "encoded trailing", "/static/sub/%2e%2e")
  go(app, "query is not part of the file", "/static/style.css?x=../outside.txt")
  console.log("--- the whole site as a static directory")
  show("root index", handle(root, "GET / HTTP/1.1\r\n\r\n"))
  show("root file", handle(root, "GET /style.css HTTP/1.1\r\n\r\n"))
  show("root attack", handle(root, "GET /../outside.txt HTTP/1.1\r\n\r\n"))
  show("root encoded attack", handle(root, "GET /%2e%2e/outside.txt HTTP/1.1\r\n\r\n"))
  show("root dot file", handle(root, "GET /.env HTTP/1.1\r\n\r\n"))
  show("no index set: a 404", handle(noIndex, "GET / HTTP/1.1\r\n\r\n"))
  console.log("--- methods")
  show("head", handle(app, "HEAD /static/style.css HTTP/1.1\r\n\r\n"))
  show("post", handle(app, "POST /static/style.css HTTP/1.1\r\nContent-Length: 0\r\n\r\n"))
  show("delete", handle(app, "DELETE /static/style.css HTTP/1.1\r\n\r\n"))
}
main()

import type { Request } from "../request.ts"
import type { Response } from "../response.ts"
import type { Templates } from "../template.ts"
import { newApp, route, handle } from "../app.ts"
import { text } from "../response.ts"
import { arg, param } from "../input.ts"
import { newContext, setVar, setList } from "../context.ts"
import { newTemplates, addTemplate, render } from "../template.ts"

const ts: Templates = newTemplates("praline/tests/templates")

function hello(req: Request): Response {
  const c = newContext()
  setVar(c, "who", arg(req, "who", "world"))
  return render(ts, "hello", c)
}

function post(req: Request): Response {
  const c = newContext()
  setVar(c, "slug", param(req, "slug"))
  return render(ts, "post", c)
}

function main(): void {
  addTemplate(ts, "hello", "<h1>Hello, {{ who }}!</h1>")
  addTemplate(ts, "post", "<article data-slug=\"{{ slug }}\">{{ slug }}</article>")
  const app = newApp()
  route(app, "GET", "/hello", hello)
  route(app, "GET", "/post/<slug>", post)
  const reqs = [
    "GET /hello HTTP/1.1\r\n\r\n",
    "GET /hello?who=Ann HTTP/1.1\r\n\r\n",
    "GET /hello?who=%3Cscript%3Ealert(1)%3C%2Fscript%3E HTTP/1.1\r\n\r\n",
    "GET /post/a%22%3E%3Cb%3E HTTP/1.1\r\n\r\n",
    "HEAD /hello HTTP/1.1\r\n\r\n",
  ]
  let i = 0
  while (i < reqs.length) {
    const r = handle(app, reqs[i])
    console.log(r.slice(r.indexOf("\r\n\r\n") + 4, r.length) + " | " + r.slice(0, r.indexOf("\r\n")))
    i++
  }
}
main()

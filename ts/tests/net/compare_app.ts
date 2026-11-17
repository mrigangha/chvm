import type { Request } from "../../praline/request.ts"
import type { Response } from "../../praline/response.ts"
import { newApp, route, staticDir } from "../../praline/app.ts"
import { text, html } from "../../praline/response.ts"
import { htmlEscape } from "../../praline/escape.ts"
import { json, jsonObject, jsonString, jsonNumber, jsonBool } from "../../praline/json.ts"
import { serverConfig } from "../../praline/server.ts"
import { runConcurrent, concurrentConfig } from "../../praline/concurrent.ts"
import { run } from "../../praline/server.ts"
import { param, paramInt, form } from "../../praline/input.ts"
import { newContext, setVar, setList } from "../../praline/context.ts"
import { newTemplates, addTemplate, render } from "../../praline/template.ts"
import type { Templates } from "../../praline/template.ts"
import { getEnv } from "../../std/net.ts"
import { sleep } from "../../std/actor.ts"

const ts: Templates = newTemplates("praline/tests/templates")

function home(req: Request): Response { return text("home") }
function hello(req: Request): Response { return text("hello " + param(req, "who")) }
function user(req: Request): Response { return text("user " + (paramInt(req, "uid") + 1)) }
function page(req: Request): Response {
  const c = newContext()
  setVar(c, "title", "About <me>")
  const a = newContext(); setVar(a, "p", "a")
  const b = newContext(); setVar(b, "p", "b")
  const d = newContext(); setVar(d, "p", "c")
  setList(c, "posts", [a, b, d])
  return render(ts, "cmp", c)
}
function concat(req: Request): Response {
  const posts: string[] = ["a", "b", "c"]
  let out = "<h1>" + htmlEscape("About <me>") + "</h1>"
  let i = 0
  while (i < posts.length) {
    out += "<li>" + htmlEscape(posts[i]) + "</li>"
    i++
  }
  return html(out)
}
function api(req: Request): Response {
  return json(jsonObject(["name", "n", "ok"], [jsonString("x"), jsonNumber(3), jsonBool(true)]))
}
function formPost(req: Request): Response {
  return json(jsonObject(["name", "length"], [jsonString(form(req, "name", "")), jsonNumber(req.body.length)]))
}
function boom(req: Request): Response {
  const a: number[] = [1]
  return text("x" + a[5])
}
function slow(req: Request): Response {
  sleep(400)
  return text("slow done")
}

function main(): void {
  addTemplate(ts, "cmp", "<h1>{{ title }}</h1>{% for p in posts %}<li>{{ p.p }}</li>{% endfor %}")
  const app = newApp()
  route(app, "GET", "/", home)
  route(app, "GET", "/hello/<who>", hello)
  route(app, "GET", "/user/<int:uid>", user)
  route(app, "GET", "/page", page)
  route(app, "GET", "/tpl", page)
  route(app, "GET", "/concat", concat)
  route(app, "GET", "/api", api)
  route(app, "POST", "/form", formPost)
  route(app, "GET", "/boom", boom)
  route(app, "GET", "/slow", slow)
  staticDir(app, "/files", "/tmp/opencode/cmpweb/public")
  const sc = serverConfig()
  sc.port = Number(getEnv("TEST_PORT", "0"))
  sc.log = false
  sc.maxRequests = Number(getEnv("MAX_REQ", "0"))
  sc.deadlineMs = 3000
  sc.ioMs = 3000
  if (getEnv("MODE", "conc") === "seq") {
    run(app, sc)
  } else {
    const cc = concurrentConfig(sc)
    cc.maxConnections = 1000
    runConcurrent(app, cc)
  }
}
main()

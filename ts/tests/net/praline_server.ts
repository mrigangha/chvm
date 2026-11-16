import type { Request } from "../../praline/request.ts"
import type { Response } from "../../praline/response.ts"
import { newApp, route, staticDir, afterRequest, onError } from "../../praline/app.ts"
import { text, securityHeaders } from "../../praline/response.ts"
import { json, jsonObject, jsonString, jsonNumber } from "../../praline/json.ts"
import { run, serverConfig } from "../../praline/server.ts"
import { param, form } from "../../praline/input.ts"
import { getEnv } from "../../std/net.ts"

function home(req: Request): Response {
  return text("home")
}

function echo(req: Request): Response {
  return json(jsonObject(["length", "name"], [jsonNumber(req.body.length), jsonString(form(req, "name", ""))]))
}

function slow(req: Request): Response {
  let i = 0
  let t = 0
  while (i < 3000000) {
    t += i
    i++
  }
  return text("slow " + t)
}

function boom(req: Request): Response {
  const a: number[] = []
  return text("x" + a[1])
}

function hello(req: Request): Response {
  return text("hello " + param(req, "who"))
}

function main(): void {
  const app = newApp()
  route(app, "GET", "/", home)
  route(app, "POST", "/echo", echo)
  route(app, "GET", "/slow", slow)
  route(app, "GET", "/boom", boom)
  route(app, "GET", "/hello/<who>", hello)
  const cfg = staticDir(app, "/files", "praline/tests/public")
  cfg.index = "index.html"
  afterRequest(app, securityHeaders)
  const sc = serverConfig()
  sc.port = Number(getEnv("TEST_PORT", "0"))
  sc.maxRequests = Number(getEnv("MAX_REQUESTS", "0"))
  sc.maxHead = Number(getEnv("MAX_HEAD", "4096"))
  sc.maxBody = Number(getEnv("MAX_BODY", "2000"))
  sc.deadlineMs = Number(getEnv("DEADLINE_MS", "1500"))
  sc.ioMs = Number(getEnv("IO_MS", "700"))
  run(app, sc)
}
main()

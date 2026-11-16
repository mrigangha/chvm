import type { Request } from "../../praline/request.ts"
import type { Response } from "../../praline/response.ts"
import { newApp, route, staticDir, afterRequest } from "../../praline/app.ts"
import { text, securityHeaders } from "../../praline/response.ts"
import { json, jsonObject, jsonString, jsonNumber } from "../../praline/json.ts"
import { serverConfig } from "../../praline/server.ts"
import { runConcurrent, concurrentConfig } from "../../praline/concurrent.ts"
import { param, form } from "../../praline/input.ts"
import { getEnv } from "../../std/net.ts"
import { sleep } from "../../std/actor.ts"

function home(req: Request): Response {
  return text("home")
}

function echo(req: Request): Response {
  return json(jsonObject(["length", "name"], [jsonNumber(req.body.length), jsonString(form(req, "name", ""))]))
}

function slowHandler(req: Request): Response {
  sleep(400)
  return text("slow done")
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
  route(app, "GET", "/slow", slowHandler)
  route(app, "GET", "/boom", boom)
  route(app, "GET", "/hello/<who>", hello)
  const cfg = staticDir(app, "/files", "praline/tests/public")
  cfg.index = "index.html"
  afterRequest(app, securityHeaders)
  const sc = serverConfig()
  sc.port = Number(getEnv("TEST_PORT", "0"))
  sc.maxHead = Number(getEnv("MAX_HEAD", "4096"))
  sc.maxBody = Number(getEnv("MAX_BODY", "2000"))
  sc.deadlineMs = Number(getEnv("DEADLINE_MS", "1500"))
  sc.ioMs = Number(getEnv("IO_MS", "700"))
  sc.maxRequests = Number(getEnv("MAX_REQUESTS", "0"))
  sc.log = getEnv("LOG", "") !== ""
  const cc = concurrentConfig(sc)
  cc.maxConnections = Number(getEnv("MAX_CONNECTIONS", "256"))
  runConcurrent(app, cc)
}
main()

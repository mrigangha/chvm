import type { Request } from "../request.ts"
import type { Response } from "../response.ts"
import { newApp, route, handle, onError } from "../app.ts"
import { text, status, abort, redirectWith } from "../response.ts"
import { jsonObject } from "../json.ts"
import { setCookie, deleteCookie, cookieOptions } from "../cookies.ts"

function h(req: Request): Response {
  return text("x")
}

function page(req: Request, code: number): Response {
  return text("p")
}

function main(): void {
  const app = newApp()
  route(app, "GET", "/", h)
  console.log("start")
  redirectWith("/x", 200)
  console.log("not reached")
}
main()

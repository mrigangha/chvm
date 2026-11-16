import type { Request } from "../request.ts"
import type { Response } from "../response.ts"
import { newApp, route, handle } from "../app.ts"
import { text } from "../response.ts"
import { param, paramInt } from "../input.ts"

function good(req: Request): Response {
  return text("n=" + paramInt(req, "n"))
}

function wrong(req: Request): Response {
  return text("x=" + param(req, "nope"))
}

function main(): void {
  const app = newApp()
  route(app, "GET", "/good/<n>", good)
  route(app, "GET", "/wrong/<n>", wrong)
  console.log(handle(app, "GET /good/12 HTTP/1.1\r\n\r\n").length)
  console.log(handle(app, "GET /good/abc HTTP/1.1\r\n\r\n").length)
}
main()

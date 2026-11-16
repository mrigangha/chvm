import type { Request } from "../request.ts"
import type { Response } from "../response.ts"
import { newApp, route } from "../app.ts"
import { text } from "../response.ts"

function ok(req: Request): Response {
  return text("ok")
}

function main(): void {
  const app = newApp()
  route(app, "GET", "/u/<a>", ok)
  route(app, "GET", "/u/<int:b>", ok)
  console.log("int and name together are fine")
  route(app, "GET", "/u/<c>", ok)
  console.log("not reached")
}
main()

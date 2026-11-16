import type { Request } from "../request.ts"
import type { Response } from "../response.ts"
import { newApp, route } from "../app.ts"
import { text } from "../response.ts"

function ok(req: Request): Response {
  return text("ok")
}

function main(): void {
  const app = newApp()
  route(app, "GET", "/a/x<y>", ok)
  console.log("not reached")
}
main()

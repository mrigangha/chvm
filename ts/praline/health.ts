import type { App } from "./app.ts"
import type { Request } from "./request.ts"
import type { Response } from "./response.ts"
import { route } from "./app.ts"
import { text } from "./response.ts"

function plHealth(req: Request): Response {
  return text("ok")
}

// Adds GET path (default /healthz) that answers 200 "ok", for a host's health check. It touches nothing, so it
// stays up when the rest of the site is not.
export function healthCheck(app: App, path: string): void {
  route(app, "GET", path, plHealth)
}

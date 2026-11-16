import type { Request } from "../../praline/request.ts"
import type { Response } from "../../praline/response.ts"
import { newApp, route, handle } from "../../praline/app.ts"
import { text } from "../../praline/response.ts"
import { getEnv, listen, accept, recv, sendAll, finishWriting, closeFd, localPort } from "../../std/net.ts"

function fine(req: Request): Response {
  return text("fine")
}

function boom(req: Request): Response {
  const a: number[] = [1]
  return text("v" + a[5])
}

function main(): void {
  const app = newApp()
  route(app, "GET", "/fine", fine)
  route(app, "GET", "/boom", boom)
  const fd = listen(0, false)
  console.log(localPort(fd))
  let n = 0
  while (n < 6) {
    const c = accept(fd, 10000, 1000)
    if (c === -110) break
    if (c < 0) continue
    const chunk = recv(c, 8192)
    sendAll(c, handle(app, chunk.data))
    finishWriting(c)
    closeFd(c)
    n++
  }
  console.log("served " + n)
}
main()

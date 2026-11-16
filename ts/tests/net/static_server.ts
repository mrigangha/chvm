import { newApp, staticDir, handle, beforeRequest, afterRequest } from "../../praline/app.ts"
import { securityHeaders } from "../../praline/response.ts"
import { listen, accept, recv, sendAll, finishWriting, closeFd, localPort } from "../../std/net.ts"

function main(): void {
  const app = newApp()
  const cfg = staticDir(app, "/", "praline/tests/public")
  cfg.index = "index.html"
  afterRequest(app, securityHeaders)
  const fd = listen(0, false)
  console.log(localPort(fd))
  let n = 0
  while (n < 12) {
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

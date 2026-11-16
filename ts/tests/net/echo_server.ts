import { getEnv, listen, accept, recv, sendAll, finishWriting, closeFd, localPort } from "../../std/net.ts"
import { printErr, exit } from "../../std/os.ts"

function main(): void {
  const fd = listen(Number(getEnv("PORT", "0")), false)
  if (fd < 0) {
    printErr("cannot listen: " + fd + "\n")
    exit(1)
  }
  console.log(localPort(fd))
  let served = 0
  while (served < 5) {
    const c = accept(fd, 10000, 1000)
    if (c === -110) break
    if (c < 0) continue
    const chunk = recv(c, 4096)
    const first = chunk.data.slice(0, chunk.data.indexOf("\r\n"))
    const body = "line=[" + first + "] err=" + chunk.err + "\n"
    const rc = sendAll(c, "HTTP/1.1 200 OK\r\nContent-Length: " + body.length + "\r\nConnection: close\r\n\r\n" + body)
    finishWriting(c)
    closeFd(c)
    console.log(body.slice(0, body.length - 1) + " sent=" + rc)
    served++
  }
  closeFd(fd)
  console.log("served " + served)
}
main()

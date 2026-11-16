import { serverConfig } from "../server.ts"

function main(): void {
  const cfg = serverConfig()
  console.log(cfg.host + " " + cfg.port + " " + cfg.maxHead + " " + cfg.maxBody + " " + cfg.deadlineMs + " " + cfg.ioMs)
}
main()

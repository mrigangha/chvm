import type { App } from "./app.ts"
import type { ServerConfig } from "./server.ts"
import { serveConnection } from "./server.ts"
import { listen, accept, closeFd, localPort, bufNew, sendAll, finishWriting } from "../std/net.ts"
import { spawnConnection, receive, trapExit, parseDown, memoryUsed, self } from "../std/actor.ts"
import { errorResponse, serialize } from "./response.ts"
import { printErr } from "../std/os.ts"
import { arenaMark, arenaFree } from "../std/arena.ts"
import { plFatal } from "./fatal.ts"

// The concurrent server: one process accepts connections, and each connection is served by a process of its own.
//
//   - A client that sends nothing, or one byte a second, holds only its own process. The others are served meanwhile.
//   - A connection's process starts with a copy of the program's globals and heap, so the routes, the templates and
//     the static settings are there. It owns the connection: when it ends, however it ends, the machine closes the
//     connection. A fault in a handler is caught by Praline as a 500, and a fault that is not ends only that process.
//   - The number of connections served at once is limited. A client that arrives over the limit is turned away
//     at once with 503, so a flood cannot use up the processes or the memory.
//   - Each process has its own memory, freed when it ends, so no per-request arena is needed.
//
// Under chvm only. Start it with chvm -N, and with -P if you allow more than 4096 connections at once.

export interface ConcurrentConfig {
  server: ServerConfig
  maxConnections: number
  childMemory: number      // memory of each connection's process in bytes, or 0 to size it from the program
}

// The memory a connection's process needs: the copy of the parent's heap, a buffer for the largest request, the
// response, and room to work. The parent's heap is not known here, so 0 asks the machine to size it from the
// copy plus 128 KiB: concurrentConfig adds the request buffer on top, by setting childMemory from the limits.
export function concurrentConfig(server: ServerConfig): ConcurrentConfig {
  return { server: server, maxConnections: 256, childMemory: 0 }
}

let cApp: App = newApp0()
let cCfg: ServerConfig = newCfg0()
let cBuf: number = 0
let cCap: number = 0

function newApp0(): App {
  const a: App = { methods: [], patterns: [], handlers: [], errorCodes: [], errorHandlers: [], lastError: "", befores: [], afters: [], statics: [] }
  return a
}

function newCfg0(): ServerConfig {
  return { host: "", port: 0, maxHead: 0, maxBody: 0, deadlineMs: 0, ioMs: 0, maxRequests: 0, log: false }
}

// The process of one connection. The argument is the connection's descriptor as text.
function connectionProcess(arg: string): void {
  const fd = Number(arg)
  const buf = bufNew(cCap)
  serveConnection(cApp, fd, buf, cCap, cCfg)
  closeFd(fd)
}

// One turn of the accept loop. Returns how many connections were accepted (0 or 1) in the low bit, and the change in
// the number of busy connections in the rest, packed as accepted + 2 * (busy + 1000000) so it is one number.
function acceptTurn(fd: number, cfg: ConcurrentConfig, busyNow: number): number {
  const sc = cfg.server
  let busy = busyNow
  // connections that finished: their processes ended, so they are no longer counted
  while (true) {
    const done = receive(-3, 0)
    if (done.err !== 0) break
    busy--
    const d = parseDown(done)
    if (d.kind !== 0) printErr("praline: a connection process ended badly: " + d.detail + "\n")
  }
  const c = accept(fd, 200, sc.ioMs)
  if (c === -110 || c === -11 || c === -4) return 0 + 2 * (busy + 1000000)
  if (c < 0) {
    printErr("praline: accept failed (error " + (0 - c) + ")\n")
    return 0 + 2 * (busy + 1000000)
  }
  if (busy >= cfg.maxConnections) {
    rejectBusy(c)
    return 1 + 2 * (busy + 1000000)
  }
  // each connection's process holds a copy of this heap, a buffer for the largest request, and room to work.
  // The size is taken from the heap as it is now. The memory is not touched until it is used, so a large
  // size costs address space and not RAM.
  const childBytes = cfg.childMemory !== 0 ? cfg.childMemory : memoryUsed(self()) + cCap + 1048576
  const pid = spawnMonitored(c, childBytes)
  if (pid > 0) {
    busy++
  } else {
    rejectBusy(c)
  }
  return 1 + 2 * (busy + 1000000)
}

// Listens and serves for ever, or for cfg.server.maxRequests connections.
export function runConcurrent(app: App, cfg: ConcurrentConfig): void {
  const sc = cfg.server
  const fd = listen(sc.port, sc.host === "0.0.0.0")
  if (fd < 0) plFatal("cannot listen on " + sc.host + ":" + sc.port + " (error " + (0 - fd) + ")")
  cApp = app
  cCfg = sc
  cCap = sc.maxHead + sc.maxBody
  printErr("praline: listening on " + sc.host + ":" + localPort(fd) + " (concurrent, up to " + cfg.maxConnections + " connections)\n")
  console.log(localPort(fd))
  trapExit(true)
  let accepted = 0
  let busy = 0
  while (sc.maxRequests === 0 || accepted < sc.maxRequests) {
    // The loop allocates (messages, strings), and nothing is collected, so each turn is freed. Without this the
    // heap grows for ever, and every connection process, which starts with a copy of it, grows with it.
    const mark = arenaMark()
    const r = acceptTurn(fd, cfg, busy)
    arenaFree(mark)
    accepted += r % 2
    busy = Math.floor(r / 2) - 1000000
  }
  // wait for the connections still being served
  let guard = 0
  while (busy > 0 && guard < 600) {
    const mark = arenaMark()
    const done = receive(-3, 100)
    if (done.err === 0) {
      busy--
      const d = parseDown(done)
      if (d.kind !== 0) printErr("praline: a connection process ended badly: " + d.detail + "\n")
    }
    arenaFree(mark)
    guard++
  }
  closeFd(fd)
}

function spawnMonitored(fd: number, mem: number): number {
  return spawnConnection(connectionProcess, "" + fd, fd, mem)
}

// Too many connections at once: the answer is written and the connection closed by the accepting process, which
// never reads from the client, so this cannot be held up by one.
function rejectBusy(fd: number): void {
  sendAll(fd, serialize(errorResponse(503), false))
  finishWriting(fd)
  closeFd(fd)
}

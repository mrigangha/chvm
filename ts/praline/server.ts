import type { App } from "./app.ts"
import { handle } from "./app.ts"
import { errorResponse, serialize } from "./response.ts"
import { getEnv, listen, accept, pollFd, sendAll, finishWriting, closeFd, localPort, nowMs, bufNew, bufRecv, bufFindHead, bufSlice } from "../std/net.ts"
import { arenaMark, arenaFree } from "../std/arena.ts"
import { printErr } from "../std/os.ts"
import { plFatal } from "./fatal.ts"
import { plCharIndex, plLower, plIsDigits, plParseUint } from "./strings.ts"

// The server loop. run(app) reads PORT and HOST from the environment, listens, and serves one request at a time.
//
// For each connection:
//   - the request is read into a fixed buffer. The head (the request line and headers) may be at most
//     maxHead bytes (default 16 KiB) and the whole request at most maxBody + maxHead. A head that is too
//     long gets 431, a body that is too long gets 413, and in both cases the rest is not read.
//   - one deadline covers the whole request (default 10 s). A client that sends a byte a second cannot hold
//     the server for longer than that. The read and the write each also give up after ioMs.
//   - the response is written, the write side is closed, and the connection is closed.
//   - memory allocated for the request is freed, and the connection's file descriptor is closed.
// A client that connects and sends nothing, or half a request, or too much, costs the server one deadline at most.
// While one request is being served no other can be accepted, so a slow handler delays the queue (the kernel
// holds up to `backlog` connections waiting). Handlers should be quick.

export interface ServerConfig {
  host: string          // "127.0.0.1" or "0.0.0.0". The default is 0.0.0.0 when PORT is set (a hosting service), else 127.0.0.1
  port: number
  maxHead: number
  maxBody: number
  deadlineMs: number    // for reading one whole request
  ioMs: number          // for one read or write that makes no progress
  maxRequests: number   // stop after this many connections, 0 for never (for tests)
  log: boolean          // one line per request on stderr
}

export function serverConfig(): ServerConfig {
  const portText = getEnv("PORT", "")
  const hasPort = portText !== ""
  let port = 8080
  if (hasPort) {
    if (!plIsDigits(portText) || portText.length > 5 || plParseUint(portText) > 65535) plFatal("PORT must be a number from 0 to 65535, not '" + portText + "'")
    port = plParseUint(portText)
  }
  const host = getEnv("HOST", hasPort ? "0.0.0.0" : "127.0.0.1")
  if (host !== "0.0.0.0" && host !== "127.0.0.1") plFatal("HOST must be 0.0.0.0 or 127.0.0.1, not '" + host + "'")
  return { host: host, port: port, maxHead: 16384, maxBody: 1048576, deadlineMs: 10000, ioMs: 5000, maxRequests: 0, log: true }
}

// What one connection gave: the request bytes, or the status to answer with when it could not be read.
export interface Incoming {
  raw: string
  status: number      // 0 when raw holds a whole request, else 408 (too slow), 413, 431, 400, or -1 to say nothing (the client went away)
}

function plFailed(code: number): Incoming {
  return { raw: "", status: code }
}

// The value of Content-Length in a head, or -1 when there is none, or -2 when it is not a number.
function plLengthOf(head: string): number {
  let pos = plCharIndex(head, 10, 0)
  while (pos >= 0 && pos < head.length) {
    const next = plCharIndex(head, 10, pos + 1)
    const end = next < 0 ? head.length : next
    let line = head.slice(pos + 1, end)
    if (line.length > 0 && line.charCodeAt(line.length - 1) === 13) line = line.slice(0, line.length - 1)
    const colon = plCharIndex(line, 58, 0)
    if (colon > 0 && plLower(line.slice(0, colon)) === "content-length") {
      let v = line.slice(colon + 1, line.length)
      let a = 0
      while (a < v.length && (v.charCodeAt(a) === 32 || v.charCodeAt(a) === 9)) a++
      let b = v.length
      while (b > a && (v.charCodeAt(b - 1) === 32 || v.charCodeAt(b - 1) === 9)) b--
      v = v.slice(a, b)
      if (!plIsDigits(v) || v.length > 9) return -2
      return plParseUint(v)
    }
    pos = next
  }
  return -1
}

// Reads one request from the connection into buf (which holds cap bytes), within the deadline.
export function readRequest(fd: number, buf: number, cap: number, cfg: ServerConfig): Incoming {
  const maxHead = cfg.maxHead
  const maxBody = cfg.maxBody
  const deadlineMs = cfg.deadlineMs
  const ioMs = cfg.ioMs
  const start = nowMs()
  let have = 0
  let headEnd = -1
  let want = -1
  while (true) {
    const left = deadlineMs - (nowMs() - start)
    if (left <= 0) return plFailed(408)
    const room = (headEnd < 0 ? maxHead : want) - have
    if (headEnd >= 0 && have >= want) break
    if (room <= 0) return plFailed(headEnd < 0 ? 431 : 413)
    const ready = pollFd(fd, 1, left < ioMs ? left : ioMs)
    if (ready < 0) return plFailed(-1)
    if (ready === 0) return plFailed(408)
    const n = bufRecv(fd, buf, have, room)
    if (n < 0) return plFailed(n === -11 ? 408 : -1)
    if (n === 0) {
      // the client closed. Whatever arrived is a request only if it is complete.
      if (headEnd >= 0 && have >= want) break
      return plFailed(have === 0 ? -1 : 400)
    }
    const from = have > 3 ? have - 3 : 0
    have = have + n
    if (headEnd < 0) {
      headEnd = bufFindHead(buf, from, have)
      if (headEnd < 0 && have >= maxHead) return plFailed(431)
      if (headEnd >= 0) {
        const len = plLengthOf(bufSlice(buf, 0, headEnd))
        if (len === -2) return plFailed(400)
        if (len > maxBody) return plFailed(413)
        want = headEnd + (len < 0 ? 0 : len)
        if (want > cap) return plFailed(413)
      }
    }
    if (headEnd >= 0 && have >= want) break
  }
  return { raw: bufSlice(buf, 0, want), status: 0 }
}

function plLogLine(app: App, raw: string, response: string, ms: number): void {
  const line = raw.slice(0, plCharIndex(raw, 13, 0) < 0 ? raw.length : plCharIndex(raw, 13, 0))
  const code = response.slice(9, 12)
  printErr(code + " " + (line.length > 120 ? line.slice(0, 120) : line) + " " + ms + "ms\n")
}

// Serves one connection that has been accepted. Returns the status that was sent, or -1 when nothing was.
export function serveConnection(app: App, fd: number, buf: number, cap: number, cfg: ServerConfig): number {
  const started = nowMs()
  const got = readRequest(fd, buf, cap, cfg)
  if (got.status === -1) return -1
  let response = ""
  if (got.status !== 0) response = serialize(errorResponse(got.status), false)
  else response = handle(app, got.raw)
  sendAll(fd, response)
  finishWriting(fd)
  if (cfg.log) plLogLine(app, got.status !== 0 ? "(unreadable)" : got.raw, response, nowMs() - started)
  return got.status !== 0 ? got.status : 200
}

// Listens and serves, for ever (or for maxRequests connections). A fault that is not caught in a handler
// still ends the program: a supervisor restarts it (see stage 8g).
export function run(app: App, cfg: ServerConfig): void {
  const fd = listen(cfg.port, cfg.host === "0.0.0.0")
  if (fd < 0) plFatal("cannot listen on " + cfg.host + ":" + cfg.port + " (error " + (0 - fd) + ")")
  const cap = cfg.maxHead + cfg.maxBody
  const buf = bufNew(cap)
  printErr("praline: listening on " + cfg.host + ":" + localPort(fd) + "\n")
  // the first line of stdout is the port, so a test or a supervisor that asked for port 0 can find it
  console.log(localPort(fd))
  let served = 0
  while (cfg.maxRequests === 0 || served < cfg.maxRequests) {
    const c = accept(fd, 1000, cfg.ioMs)
    if (c === -110 || c === -11 || c === -4) continue
    if (c < 0) {
      printErr("praline: accept failed (error " + (0 - c) + ")\n")
      continue
    }
    const mark = arenaMark()
    serveConnection(app, c, buf, cap, cfg)
    closeFd(c)
    arenaFree(mark)
    served++
  }
  closeFd(fd)
}

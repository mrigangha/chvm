import { spawn, spawnFresh, spawnMonitor, spawnWith, self, send, receive, sleep, processCount, isAlive, kill, mailboxSize, memoryUsed, parseDown, yieldNow } from "../../std/actor.ts"

let counter2 = 0
let shared = 10
const table: number[] = [1, 2, 3]

function mutator(arg: string): void {
  shared = 999
  table.push(4)
  table[0] = 100
  send(Number(arg), 1, "mutated " + shared + " " + table.length + " " + table[0])
  sleep(30)
}

function memHog(arg: string): void {
  const keep: number[][] = []
  while (true) {
    keep.push([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
  }
}

function stackHog(arg: string): void {
  stackHog(arg)
  counter2++
}

function bigMessage(arg: string): void {
  const m = receive(1, 2000)
  send(m.from, 2, "got " + m.data.length)
}

function counter(arg: string): void {
  let n = 0
  while (true) {
    const m = receive(-1, -1)
    n++
    send(m.from, 5, "" + n)
  }
}

function slowToDie(arg: string): void {
  sleep(5000)
}

function pingPong(arg: string): void {
  const boss = Number(arg)
  let i = 0
  while (i < 1000) {
    const m = receive(1, 2000)
    send(boss, 2, m.data + "!")
    i++
  }
}

function main(): void {
  console.log("--- a child cannot change its parent's memory")
  const p = spawn(mutator, "" + self())
  console.log(receive(1, 2000).data)
  console.log("parent: shared " + shared + ", table " + table.length + " " + table[0])

  console.log("--- a child that runs out of memory ends alone")
  const h = spawnWith(memHog, "", 4, 300000)
  const d = parseDown(receive(-3, 5000))
  console.log("memory hog: kind " + d.kind + " " + d.detail + ", still alive: " + processCount())

  console.log("--- a child that overflows its stack ends alone")
  spawnMonitor(stackHog, "")
  const d2 = parseDown(receive(-3, 5000))
  console.log("stack hog: kind " + d2.kind + " " + d2.detail)

  console.log("--- messages are copies, in order, and bounded")
  const b = spawn(bigMessage, "")
  let big = ""
  let i = 0
  while (i < 1000) {
    big += "0123456789"
    i++
  }
  console.log("send 10000 bytes: " + send(b, 1, big))
  console.log(receive(2, 2000).data)
  const c = spawn(counter, "")
  i = 0
  let last = ""
  while (i < 50) {
    send(c, 1, "m")
    i++
  }
  i = 0
  let ordered = true
  while (i < 50) {
    const r = receive(5, 2000)
    if (r.data !== "" + (i + 1)) ordered = false
    i++
  }
  console.log("50 messages answered in order: " + ordered)
  console.log("a message over 1 MiB: " + send(c, 1, bigString(1048577)))
  console.log("a message of exactly 1 MiB: " + send(c, 1, bigString(1048576)))
  console.log("a negative tag: " + send(c, -1, "x"))
  console.log("to a pid that never existed: " + send(123456, 1, "x"))
  let full = 0
  let refused = 0
  const sink = spawn(slowToDie, "")
  i = 0
  while (i < 1100) {
    const rc = send(sink, 1, "x")
    if (rc === 0) full++
    else refused = rc
    i++
  }
  console.log("mailbox of a busy process: accepted " + full + ", then error " + refused + ", waiting " + mailboxSize(sink))
  kill(sink)

  console.log("--- a pid is not reused by mistake")
  const q = spawn(slowToDie, "")
  kill(q)
  const q2 = spawn(slowToDie, "")
  console.log("old pid dead: " + !isAlive(q) + ", new alive: " + isAlive(q2) + ", different: " + (q !== q2))
  console.log("send to the old pid: " + send(q, 1, "x"))
  kill(q2)
  kill(c)
  kill(b)

  console.log("--- a conversation")
  const pp = spawn(pingPong, "" + self())
  i = 0
  let good = 0
  while (i < 1000) {
    send(pp, 1, "p" + i)
    const r = receive(2, 2000)
    if (r.data === "p" + i + "!") good++
    i++
  }
  console.log("1000 round trips: " + good)

  console.log("--- the first process cannot be killed")
  console.log("kill 1: " + kill(1))
  sleep(30)
  console.log("end: " + processCount())
}

function bigString(n: number): string {
  const parts: string[] = []
  let i = 0
  while (i < n / 1024) {
    parts.push(rep1024())
    i++
  }
  return parts.join("")
}

function rep1024(): string {
  const parts: string[] = []
  let i = 0
  while (i < 128) {
    parts.push("01234567")
    i++
  }
  return parts.join("")
}
main()

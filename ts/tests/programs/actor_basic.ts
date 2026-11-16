import { spawn, spawnMonitor, spawnLink, spawnFresh, self, send, receive, trapExit, kill, sleep, processCount, isAlive, parseDown } from "../../std/actor.ts"

let greeting = "hello"
let counter = 0

function echoUpper(arg: string): void {
  const m = receive(1, 2000)
  let out = ""
  let i = 0
  while (i < m.data.length) {
    const c = m.data.charCodeAt(i)
    out += String.fromCharCode(c >= 97 && c <= 122 ? c - 32 : c)
    i++
  }
  send(m.from, 2, arg + ":" + out)
}

function seesGlobals(arg: string): void {
  counter += 5
  send(Number(arg), 3, greeting + " " + counter)
}

function freshOnly(arg: string): void {
  send(Number(arg), 4, "counter=" + counter + " arg=" + arg.length)
}

function crash(arg: string): void {
  const a: number[] = []
  const x = a[3]
}

function thrower(arg: string): void {
  throw "my own error " + arg
}

function quits(arg: string): void {
  sleep(10)
}

function forever(arg: string): void {
  while (true) {
    counter++
  }
}

function main(): void {
  console.log("alone: " + processCount() + " pid " + self())

  const p = spawn(echoUpper, "tag")
  send(p, 1, "hello world")
  const r = receive(2, 2000)
  console.log("reply " + r.data + " from the child: " + (r.from === p))

  spawn(seesGlobals, "" + self())
  const g = receive(3, 2000)
  console.log("child sees a copy of the globals: " + g.data + ", and the parent's counter is still " + counter)

  spawnFresh(freshOnly, "" + self())
  const f = receive(4, 2000)
  console.log("fresh child: " + f.data)

  const a = spawnMonitor(crash, "")
  const d1 = parseDown(receive(-1, 2000))
  console.log("fault: kind " + d1.kind + " pid ok " + (d1.pid === a) + " " + d1.detail)

  const b = spawnMonitor(thrower, "x")
  const d2 = parseDown(receive(-1, 2000))
  console.log("throw: kind " + d2.kind + " " + d2.detail)

  const c = spawnMonitor(quits, "")
  const d3 = parseDown(receive(-1, 2000))
  console.log("normal: kind " + d3.kind + " " + d3.detail)

  const l = spawnMonitor(forever, "")
  sleep(30)
  console.log("alive while spinning: " + isAlive(l) + ", and this process still runs")
  kill(l)
  const d4 = parseDown(receive(-1, 2000))
  console.log("killed: kind " + d4.kind + ", alive now " + isAlive(l))

  const empty = receive(9, 20)
  console.log("nothing sent: err " + empty.err)
  console.log("send to a dead process: " + send(l, 1, "x"))

  trapExit(true)
  const lk = spawnLink(crash, "")
  const sig = receive(-2, 2000)
  const d5 = parseDown(sig)
  console.log("linked crash seen as a message, tag " + sig.tag + " kind " + d5.kind)
  sleep(20)
  console.log("left: " + processCount())
}
main()

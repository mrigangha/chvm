// Actors: lightweight processes that share nothing and talk by messages, for node. Node cannot run them, so
// every function here stops the program with a message. A program compiled with chts gets actor_chvm.ts, which
// uses the machine's own processes. Test the logic of an actor as an ordinary function under node, and run the
// actors on chvm.

export interface Message {
  err: number         // 0, or a negative error number (-110 when the wait ran out)
  from: number        // the pid of the sender
  tag: number         // 0 or more for ordinary messages, -2 for an exit signal, -3 for a monitor message
  data: string        // the bytes of the message
}

export interface Down {
  kind: number        // 0 normal exit, 1 exit with a code, 2 machine fault, 3 uncaught throw, 4 killed, 6 no such process
  code: number
  pid: number
  detail: string
}

function actorOnly(): number {
  throw "actors need chvm: this program was run under node"
}

export function spawn(fn: (arg: string) => void, arg: string): number { return actorOnly() }
export function spawnLink(fn: (arg: string) => void, arg: string): number { return actorOnly() }
export function spawnMonitor(fn: (arg: string) => void, arg: string): number { return actorOnly() }
export function spawnFresh(fn: (arg: string) => void, arg: string): number { return actorOnly() }
export function spawnWith(fn: (arg: string) => void, arg: string, flags: number, memBytes: number): number { return actorOnly() }
export function spawnForConnection(fn: (arg: string) => void, arg: string, fd: number): number { return actorOnly() }
export function spawnConnection(fn: (arg: string) => void, arg: string, fd: number, memBytes: number): number { return actorOnly() }
export function sendRaw(fd: number, data: string): number { return actorOnly() }
export function self(): number { return actorOnly() }
export function send(pid: number, tag: number, data: string): number { return actorOnly() }
export function receive(tag: number, waitMs: number): Message { actorOnly(); return { err: -38, from: 0, tag: 0, data: "" } }
export function link(pid: number): number { return actorOnly() }
export function unlink(pid: number): number { return actorOnly() }
export function monitor(pid: number): number { return actorOnly() }
export function trapExit(on: boolean): boolean { actorOnly(); return false }
export function kill(pid: number): number { return actorOnly() }
export function sleep(ms: number): void { actorOnly() }
export function yieldNow(): void { actorOnly() }
export function processCount(): number { return actorOnly() }
export function isAlive(pid: number): boolean { actorOnly(); return false }
export function mailboxSize(pid: number): number { return actorOnly() }
export function memoryUsed(pid: number): number { return actorOnly() }
export function parseDown(m: Message): Down { actorOnly(); return { kind: 0, code: 0, pid: 0, detail: "" } }
export function actNow(): number { return Math.floor(performance.now()) }

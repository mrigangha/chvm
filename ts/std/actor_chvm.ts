// The chvm version of actor.ts, built on the machine's processes.
//
// A process is a function that runs with its own memory, registers and mailbox. It shares nothing with the one
// that started it: a message is a copy of bytes, and a fault ends only the process it happens in. The machine runs
// them in turn on one thread, takes the CPU back from one that loops, and frees all of a process's memory when it
// ends. A spawned process starts with a copy of its parent's globals and heap (spawnFresh starts with only the
// program's constants). The first process is the program: when it ends, every other process ends with it.

export interface Message {
  err: number
  from: number
  tag: number
  data: string
}

export interface Down {
  kind: number
  code: number
  pid: number
  detail: string
}

// The flags of a spawn, as the machine takes them.
const ACT_FRESH: number = 1
const ACT_LINK: number = 2
const ACT_MONITOR: number = 4

// Starts a process that runs fn(arg). Returns its pid, or a negative error number: -11 too many processes,
// -12 not enough memory. memBytes is the size of its memory, or 0 for the smallest that fits. The call does not
// wait: the new process is queued and runs when the scheduler gets to it.
export function spawnWith(fn: (arg: string) => void, arg: string, flags: number, memBytes: number): number {
  return __pspawn(fn, __toaddr(arg) + 8, arg.length, memBytes, flags)
}

// Starts a process that takes over a connection that this process accepted. The new process owns the descriptor from
// its first instruction, and the machine closes it when that process ends, however it ends. Use it to serve a
// connection in a process of its own. The argument is passed as for spawn: put the descriptor in it too.
export function spawnForConnection(fn: (arg: string) => void, arg: string, fd: number): number {
  return __pspawn(fn, __toaddr(arg) + 8, arg.length, 0, ACT_FRESH + fd * 256)
}

// Like spawnForConnection, but the new process starts with a copy of this one's globals and heap (so it sees the
// program's routes and settings), and it is monitored by this one: a message with tag -3 arrives when it ends.
// memBytes sizes its memory, or 0 to take what fits. The copy costs time and memory in proportion to the heap.
export function spawnConnection(fn: (arg: string) => void, arg: string, fd: number, memBytes: number): number {
  return __pspawn(fn, __toaddr(arg) + 8, arg.length, memBytes, ACT_MONITOR + fd * 256)
}

export function spawn(fn: (arg: string) => void, arg: string): number {
  return spawnWith(fn, arg, 0, 0)
}

// Starts a process linked to this one: if either ends abnormally the other ends too, unless it traps exits.
export function spawnLink(fn: (arg: string) => void, arg: string): number {
  return spawnWith(fn, arg, ACT_LINK, 0)
}

// Starts a process this one monitors: when it ends, this one gets a message with tag -3 and is not harmed.
export function spawnMonitor(fn: (arg: string) => void, arg: string): number {
  return spawnWith(fn, arg, ACT_MONITOR, 0)
}

// Starts a process with a clean image: the program's constants and nothing else. Its globals are zero, so it can
// use only its argument. It is much smaller than a copy of a parent with a large heap.
export function spawnFresh(fn: (arg: string) => void, arg: string): number {
  return spawnWith(fn, arg, ACT_FRESH, 0)
}

export function self(): number {
  return __self()
}

// Copies data into the mailbox of pid. Returns 0, or a negative error number: -3 no such process, -105 the mailbox
// is full (1000 messages or 4 MiB), -90 the message is over 1 MiB. tag is 0 or more.
export function send(pid: number, tag: number, data: string): number {
  return __send(pid, tag, __toaddr(data) + 8, data.length)
}

// Waits for the first message with this tag (-1 for any) for up to waitMs (-1 for ever, 0 not at all).
// Messages with other tags stay in the mailbox. err is -110 when the wait ran out.
export function receive(tag: number, waitMs: number): Message {
  const n = __msgwait(tag, waitMs)
  if (n < 0) return { err: n, from: 0, tag: 0, data: "" }
  const from = __msgfrom()
  const t = __msgtag()
  const r = __str_alloc(n)
  __msgtake(__toaddr(r) + 8, n)
  return { err: 0, from: from, tag: t, data: r }
}

export function link(pid: number): number {
  return __plink(pid)
}

export function unlink(pid: number): number {
  return __punlink(pid)
}

// When pid ends, this process gets a message with tag -3. Never harms this process.
export function monitor(pid: number): number {
  return __monitor(pid)
}

// With true, an exit signal from a linked process arrives as a message with tag -2 and does not end this process.
// Returns the setting it had.
export function trapExit(on: boolean): boolean {
  return __trapexit(on ? 1 : 0) !== 0
}

// Ends a process at once, whatever it is doing. Processes linked to it are told. The first process cannot be killed.
export function kill(pid: number): number {
  return __pkill(pid)
}

export function sleep(ms: number): void {
  __sleep(ms)
}

// Lets the other processes run before this one goes on.
export function yieldNow(): void {
  __yield()
}

export function processCount(): number {
  return __pcount()
}

export function isAlive(pid: number): boolean {
  return __pinfo(pid, 0) === 1
}

export function mailboxSize(pid: number): number {
  return __pinfo(pid, 1)
}

// Bytes in use by a process: its heap, its stack, its data.
export function memoryUsed(pid: number): number {
  return __pinfo(pid, 2)
}

function actWord(s: string, from: number): number {
  let i = from
  while (i < s.length && s.charCodeAt(i) !== 32) i++
  return i
}

// Reads the text of an exit or monitor message: "kind code pid detail".
export function parseDown(m: Message): Down {
  const s = m.data
  const a = actWord(s, 0)
  const b = actWord(s, a + 1)
  const c = actWord(s, b + 1)
  return { kind: Number(s.slice(0, a)), code: Number(s.slice(a + 1, b)), pid: Number(s.slice(b + 1, c)), detail: s.slice(c + 1, s.length) }
}

export function actNow(): number {
  return Math.floor(__time(1) / 1000000)
}

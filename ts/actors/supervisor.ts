import { spawnLink, self, send, receive, trapExit, kill, parseDown, actNow, isAlive, processCount } from "../std/actor.ts"
import { plFatal } from "../praline/fatal.ts"

// A supervisor starts child processes and starts them again when they crash.
//
//   const sup = newSupervisor(1, 5, 10000)       restart only the child that crashed; give up after 5 restarts in 10 s
//   addChild(sup, "worker", workerFn, "arg", 0)  the last number says when a child is restarted (see below)
//   superviseOnce(sup, 1000)                     handle one event: a crash, a restart, or nothing for 1 s
//
// The supervisor runs as a process of its own, and traps exits so that the crash of a child comes to it as a
// message. Strategies: 0 one for one (restart only the child that ended), 1 one for all (when one ends,
// stop the rest and start them all again). A child's restart rule: 0 always, 1 only when it ended abnormally
// (a crash, a throw or a kill), 2 never.
//
// A child that keeps crashing would be restarted for ever, so a supervisor allows maxRestarts restarts in
// windowMs. One more and it stops everything it started and gives up: superviseOnce returns -1, and the process
// that started the supervisor, which is linked to it, can see that and decide what to do (usually restart the
// whole supervisor, higher up: that is how the failures climb a tree).

export interface Child {
  name: string
  fn: (arg: string) => void
  arg: string
  rule: number
  pid: number         // 0 when it is not running
  starts: number
}

export interface Supervisor {
  strategy: number
  maxRestarts: number
  windowMs: number
  children: Child[]
  restartTimes: number[]
  gaveUp: boolean
}

export function newSupervisor(strategy: number, maxRestarts: number, windowMs: number): Supervisor {
  if (strategy !== 0 && strategy !== 1) plFatal("the supervisor strategy is 0 (one for one) or 1 (one for all)")
  if (maxRestarts < 0 || windowMs < 1) plFatal("the supervisor needs maxRestarts of 0 or more and windowMs of 1 or more")
  const ch: Child[] = []
  const rt: number[] = []
  trapExit(true)
  return { strategy: strategy, maxRestarts: maxRestarts, windowMs: windowMs, children: ch, restartTimes: rt, gaveUp: false }
}

function startChild(sup: Supervisor, i: number): number {
  const c = sup.children[i]
  const pid = spawnLink(c.fn, c.arg)
  if (pid > 0) {
    c.pid = pid
    c.starts++
  } else {
    c.pid = 0
  }
  return pid
}

// Adds a child and starts it. Returns its pid, or a negative error number when it could not be started.
export function addChild(sup: Supervisor, name: string, fn: (arg: string) => void, arg: string, rule: number): number {
  if (rule < 0 || rule > 2) plFatal("a child's restart rule is 0 (always), 1 (only after a failure) or 2 (never)")
  let i = 0
  while (i < sup.children.length) {
    if (sup.children[i].name === name) plFatal("the supervisor already has a child called '" + name + "'")
    i++
  }
  sup.children.push({ name: name, fn: fn, arg: arg, rule: rule, pid: 0, starts: 0 })
  return startChild(sup, sup.children.length - 1)
}

function childIndex(sup: Supervisor, pid: number): number {
  let i = 0
  while (i < sup.children.length) {
    if (sup.children[i].pid === pid) return i
    i++
  }
  return -1
}

// Records a restart, and says whether the limit has been passed.
function tooMany(sup: Supervisor): boolean {
  const now = actNow()
  const keep: number[] = []
  let i = 0
  while (i < sup.restartTimes.length) {
    if (now - sup.restartTimes[i] < sup.windowMs) keep.push(sup.restartTimes[i])
    i++
  }
  keep.push(now)
  sup.restartTimes = keep
  return keep.length > sup.maxRestarts
}

// Ends every child and gives up. The exit signals of the children that were just ended are taken out of the
// mailbox, so they are not mistaken for something that happens to a later supervisor.
export function stopAll(sup: Supervisor): void {
  let i = 0
  while (i < sup.children.length) {
    const c = sup.children[i]
    if (c.pid > 0 && isAlive(c.pid)) kill(c.pid)
    c.pid = 0
    i++
  }
  sup.gaveUp = true
  sleepDrain()
}

// Handles one thing: waits up to waitMs for a child to end and acts on it. Returns the number of children
// that were restarted (0 when nothing happened), or -1 when the supervisor gave up.
export function superviseOnce(sup: Supervisor, waitMs: number): number {
  if (sup.gaveUp) return -1
  const m = receive(-2, waitMs)
  if (m.err !== 0) return 0
  const d = parseDown(m)
  const i = childIndex(sup, d.pid)
  if (i < 0) return 0
  const c = sup.children[i]
  c.pid = 0
  const failed = d.kind >= 2
  const restart = c.rule === 0 || (c.rule === 1 && failed)
  if (!restart) return 0
  if (tooMany(sup)) {
    stopAll(sup)
    return -1
  }
  if (sup.strategy === 1) {
    let k = 0
    while (k < sup.children.length) {
      if (k !== i && sup.children[k].pid > 0) {
        kill(sup.children[k].pid)
        sup.children[k].pid = 0
      }
      k++
    }
    // the exit signals of the children just ended are not failures to count: take them out of the mailbox
    sleepDrain()
    let n = 0
    k = 0
    while (k < sup.children.length) {
      if (sup.children[k].rule !== 2 && startChild(sup, k) > 0) n++
      k++
    }
    return n
  }
  return startChild(sup, i) > 0 ? 1 : 0
}

function sleepDrain(): void {
  while (true) {
    const m = receive(-2, 0)
    if (m.err !== 0) break
  }
}

// Handles events until the supervisor gives up or has no running child left. Returns the number of restarts.
export function superviseLoop(sup: Supervisor, idleMs: number): number {
  let total = 0
  while (!sup.gaveUp) {
    if (runningCount(sup) === 0) break
    const n = superviseOnce(sup, idleMs)
    if (n < 0) break
    total += n
  }
  return total
}

export function runningCount(sup: Supervisor): number {
  let n = 0
  let i = 0
  while (i < sup.children.length) {
    if (sup.children[i].pid > 0) n++
    i++
  }
  return n
}

export function childPid(sup: Supervisor, name: string): number {
  let i = 0
  while (i < sup.children.length) {
    if (sup.children[i].name === name) return sup.children[i].pid
    i++
  }
  return 0
}

export function childStarts(sup: Supervisor, name: string): number {
  let i = 0
  while (i < sup.children.length) {
    if (sup.children[i].name === name) return sup.children[i].starts
    i++
  }
  return 0
}

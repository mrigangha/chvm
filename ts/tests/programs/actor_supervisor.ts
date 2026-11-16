import { spawn, self, send, receive, sleep, processCount, isAlive, kill } from "../../std/actor.ts"
import { newSupervisor, addChild, superviseOnce, superviseLoop, runningCount, childPid, childStarts, stopAll } from "../../actors/supervisor.ts"

let serial = 0

// A worker that handles messages and crashes on the message "die".
function worker(arg: string): void {
  while (true) {
    const m = receive(1, -1)
    if (m.data === "die") {
      const a: number[] = []
      const x = a[1]
    }
    send(m.from, 2, arg + " handled " + m.data)
  }
}

function alwaysCrashes(arg: string): void {
  throw "cannot start"
}

function runsOnce(arg: string): void {
  sleep(5)
}

function main(): void {
  console.log("--- one for one: only the child that crashed is restarted")
  const sup = newSupervisor(0, 5, 10000)
  addChild(sup, "a", worker, "A", 0)
  addChild(sup, "b", worker, "B", 0)
  const a1 = childPid(sup, "a")
  const b1 = childPid(sup, "b")
  send(a1, 1, "one")
  console.log(receive(2, 2000).data)
  send(a1, 1, "die")
  console.log("restarted " + superviseOnce(sup, 2000))
  const a2 = childPid(sup, "a")
  console.log("a has a new pid: " + (a2 !== a1 && a2 > 0) + ", b is the same: " + (childPid(sup, "b") === b1))
  send(a2, 1, "two")
  console.log(receive(2, 2000).data)
  send(b1, 1, "still here")
  console.log(receive(2, 2000).data)
  console.log("starts: a " + childStarts(sup, "a") + ", b " + childStarts(sup, "b"))
  stopAll(sup)
  sleep(20)
  console.log("after stop: " + processCount())

  console.log("--- one for all: when one crashes, all are restarted")
  const all = newSupervisor(1, 5, 10000)
  addChild(all, "x", worker, "X", 0)
  addChild(all, "y", worker, "Y", 0)
  const x1 = childPid(all, "x")
  const y1 = childPid(all, "y")
  send(x1, 1, "die")
  console.log("restarted " + superviseOnce(all, 2000))
  console.log("both are new: " + (childPid(all, "x") !== x1 && childPid(all, "y") !== y1) + ", y1 gone: " + !isAlive(y1))
  console.log("starts: x " + childStarts(all, "x") + ", y " + childStarts(all, "y") + ", alive " + runningCount(all))
  stopAll(all)
  sleep(20)

  console.log("--- a child that always crashes: the supervisor gives up after the limit")
  const lim = newSupervisor(0, 3, 10000)
  addChild(lim, "bad", alwaysCrashes, "", 0)
  const restarts = superviseLoop(lim, 2000)
  console.log("restarts before giving up: " + restarts + ", gave up: " + lim.gaveUp + ", running: " + runningCount(lim))
  sleep(20)
  console.log("nothing is left running: " + processCount())

  console.log("--- restart rules")
  const rules = newSupervisor(0, 5, 10000)
  addChild(rules, "once", runsOnce, "", 1)
  addChild(rules, "never", alwaysCrashes, "", 2)
  sleep(40)
  let i = 0
  let total = 0
  while (i < 4) {
    const n = superviseOnce(rules, 100)
    if (n > 0) total += n
    i++
  }
  console.log("a child that ended normally under rule 1, and one under rule 2, were not restarted: " + total)
  console.log("starts: once " + childStarts(rules, "once") + ", never " + childStarts(rules, "never"))
  stopAll(rules)

  console.log("--- a window: crashes spread over time do not add up")
  const win = newSupervisor(0, 2, 150)
  addChild(win, "w", worker, "W", 0)
  let k = 0
  let ok = true
  while (k < 5) {
    send(childPid(win, "w"), 1, "die")
    if (superviseOnce(win, 2000) !== 1) ok = false
    sleep(100)
    k++
  }
  console.log("5 crashes, 100 ms apart, with a limit of 2 in 150 ms: all restarted " + ok + ", gave up " + win.gaveUp)
  stopAll(win)
}
main()

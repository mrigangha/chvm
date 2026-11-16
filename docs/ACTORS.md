# Actors on chvm

A small Erlang-like process model in the VM, and a library for chts. A process has its own memory, talks only by
messages, and can fail without harming anything else. Supervisors restart processes that fail.

This is concurrency on one OS thread, not parallelism. Processes take turns; they do not run at the same moment.
A server gains the ability to serve many slow clients at once, not more CPU.

## The model in six rules

1. A process is a function `fn(arg: string)` with its own memory, registers and mailbox.
2. Nothing is shared. A message is a copy of bytes. A child starts with a copy of its parent's globals and heap, and
   changes to either side are not seen by the other.
3. A process that crashes ends alone. Its memory is freed at once.
4. `link` and `monitor` tell other processes when one ends. `trapExit` turns a link's death signal into a message.
5. The first process is the program. When it ends, every process ends.
6. A process that loops is preempted, so it cannot starve the others.

## The library (`std/actor.ts`)

| Function | Does |
|---|---|
| `spawn(fn, arg)` | starts a process, returns its pid (or a negative error number) |
| `spawnLink(fn, arg)` | the same, linked to the caller |
| `spawnMonitor(fn, arg)` | the same, monitored by the caller |
| `spawnFresh(fn, arg)` | starts with only the program's constants: much smaller, but globals are zero |
| `spawnWith(fn, arg, flags, bytes)` | all the options, with a memory size |
| `spawnConnection(fn, arg, fd, bytes)` | takes over a connection the caller accepted. Monitored |
| `self()` | the caller's pid. The first process is 1 |
| `send(pid, tag, data)` | 0, or `-3` no such process, `-105` mailbox full, `-90` over 1 MiB |
| `receive(tag, waitMs)` | `{ err, from, tag, data }`. Tag -1 is any. `waitMs` -1 waits for ever. `err` -110 is a timeout |
| `link(pid)`, `unlink(pid)`, `monitor(pid)` | |
| `trapExit(true)` | exit signals from links arrive as messages with tag -2 |
| `kill(pid)` | ends a process. Not the first one |
| `sleep(ms)`, `yieldNow()` | |
| `processCount()`, `isAlive(pid)`, `mailboxSize(pid)`, `memoryUsed(pid)` | |
| `parseDown(message)` | reads an exit or monitor message into `{ kind, code, pid, detail }` |

Tags: 0 and above are yours. -2 is an exit signal from a link, and -3 is a monitor message.

`kind` in `parseDown`: 0 normal exit, 1 exit with a code, 2 machine fault (such as `index out of range`), 3 uncaught
throw, 4 killed, 6 no such process.

## Supervisors (`actors/supervisor.ts`)

```ts
const sup = newSupervisor(0, 5, 10000)       // one for one. Up to 5 restarts in 10 seconds, then give up
addChild(sup, "worker", workerFn, "arg", 0)  // rule 0: always restart. 1: only after a failure. 2: never
superviseLoop(sup, 1000)                     // handles crashes until the supervisor gives up
```

- **One for one** restarts only the child that ended. **One for all** ends the others and starts them all again.
- A child that keeps crashing would be restarted for ever. After `maxRestarts` in `windowMs` the supervisor stops
  all its children and gives up, and `superviseOnce` returns -1. Whoever started the supervisor decides what to do
  next, usually by being supervised itself. That is how failures climb a tree.
- Restarts in the same window are counted together, so crashes spread over time do not add up.

## A server with a process per connection (`praline/concurrent.ts`)

```ts
runConcurrent(app, concurrentConfig(serverConfig()))
```

One process accepts. Each connection gets a process of its own. Measured on one machine:

| | one at a time (`run`) | one process per connection (`runConcurrent`) |
|---|---|---|
| 200 requests with one stalled client present | 3.05 s | **0.04 s** |
| 8 requests that each take 400 ms | 3.2 s | **0.41 s** |
| 20 requests while 20 silent clients hold connections | waits for each deadline | answered in 2 ms |
| plain requests, one client | 7,200 req/s | 3,600 req/s |
| plain requests, 20 clients | 9,800 req/s | 4,500 req/s |
| memory after 3,000 requests | 4 MB | 4 MB |

**The trade is real.** For fast requests from well-behaved clients the one-at-a-time loop is about twice as fast,
because a process per connection costs a spawn, a copy of the heap and a free. For a public site where one slow
or hostile client must not delay everyone, the process per connection is what you want. A portfolio site is the
second case. Choose with `run` or `runConcurrent`.

- Connections at once are limited (`maxConnections`, 256 by default). One more is answered `503` at once, by the
  accepting process, which never reads from the client.
- A connection's process owns its connection. The machine closes it when the process ends, however it ends.
- A handler that crashes gives a 500 (Praline catches it). A crash that is not caught ends only that connection.
- The accepting process is itself a process. Start it under a supervisor to restart it if it dies.

## What this does not do

- **No parallelism.** One OS thread. A handler that computes for a second delays the scheduler, though other
  processes are still preempted every 10,000 branches, so they are delayed, not frozen.
- **No distribution.** Processes live in one machine. There are no remote pids.
- **No selective receive by pattern.** Receive filters by tag only.
- **Running another program (`SYS_SPAWN`) blocks everything** until it ends.
- **Messages are bytes.** To send a structure, turn it into a string. Pointers cannot be sent, since they would point into the sender's memory.
- **A process cannot be killed in the middle of a system call.** Kill takes effect when the machine next schedules.
- **Under node every call stops the program.** Test an actor's logic as an ordinary function, and run the actors on chvm.

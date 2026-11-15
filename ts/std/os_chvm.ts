// The chvm version of os.ts, built on system calls. chts uses it automatically when a program
// imports std/os.ts.

function cstr(s: string): number {
  // a NUL-terminated copy of s in memory, as the number address
  const n = s.length
  const p = __alloc(n + 1)
  __memcpy(p, __toaddr(s) + 8, n)
  __st8(p + n, 0)
  return p
}

export function fileExists(path: string): boolean {
  const fd = __open(cstr(path), 0, 0)
  if (fd < 0) return false
  __close(fd)
  return true
}

export function readFile(path: string): string {
  const fd = __open(cstr(path), 0, 0)
  if (fd < 0) {
    __print(2, "cannot read " + path + "\n")
    __exit(66)
  }
  let cap = 65536
  let buf = __alloc(cap)
  let len = 0
  while (true) {
    if (len === cap) {
      const bigger = __alloc(cap * 2)
      __memcpy(bigger, buf, len)
      buf = bigger
      cap = cap * 2
    }
    const got = __read(fd, buf + len, cap - len)
    if (got <= 0) break
    len = len + got
  }
  __close(fd)
  const r = __str_alloc(len)
  __memcpy(__toaddr(r) + 8, buf, len)
  return r
}

export function writeFile(path: string, data: string): void {
  const fd = __open(cstr(path), 0x31, 420)
  if (fd < 0) {
    __print(2, "cannot write " + path + "\n")
    __exit(73)
  }
  const a = __toaddr(data)
  __write(fd, a + 8, __ldi(a))
  __close(fd)
}

export function argCount(): number {
  return __argc() - 1
}

export function argAt(i: number): string {
  const buf = __alloc(4096)
  const n = __argv(i + 1, buf, 4096)
  const r = __str_alloc(n)
  __memcpy(__toaddr(r) + 8, buf, n)
  return r
}

// Where chasm and chvm are. $CHVM_BIN is not readable here (there is no way to read the environment),
// so the build directory next to the repository is assumed, as build_self.sh runs from ts/.
export function toolDir(): string {
  return "../build"
}

export function printErr(s: string): void {
  __print(2, s)
}

export function exit(code: number): void {
  __exit(code)
}

// Runs cmd with args and waits for it. Returns its exit code. Needs chvm -X. A program that could
// not be started returns 127 and prints why, like a shell does.
export function runProgram(cmd: string, args: string[]): number {
  const n = args.length + 1
  const table = __alloc((n + 1) * 8)
  __stp(table, __fromaddr(cstr(cmd)))
  let i = 0
  while (i < args.length) {
    __stp(table + (i + 1) * 8, __fromaddr(cstr(args[i])))
    i++
  }
  __sti(table + n * 8, 0)
  const rc = __spawn(table, 0)
  if (rc < 0) {
    if (rc === -1) __print(2, "cannot run " + cmd + ": run chvm with -X to allow it\n")
    else __print(2, "cannot run " + cmd + " (error " + (0 - rc) + ")\n")
    return 127
  }
  return rc
}

export function dirOf(path: string): string {
  const i = lastSlash(path)
  if (i < 0) return "."
  return path.slice(0, i)
}

function lastSlash(s: string): number {
  let i = s.length - 1
  while (i >= 0) {
    if (s.charCodeAt(i) === 47) return i
    i--
  }
  return -1
}

export function tempPath(name: string): string {
  return "/tmp/" + name
}

export function removeFile(path: string): void {
}

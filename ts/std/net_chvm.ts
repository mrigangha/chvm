// The chvm version of net.ts, built on system calls. Needs chvm -N. Without it every call here fails
// with -1, and getEnv returns the fallback.

export interface Chunk {
  data: string
  err: number
}

function netCstr(s: string): number {
  const n = s.length
  const p = __alloc(n + 1)
  __memcpy(p, __toaddr(s) + 8, n)
  __st8(p + n, 0)
  return p
}

// The text of an environment variable, or the fallback when it is not set or is longer than 4 KiB. A small buffer
// is used first, so a program that reads a few settings does not keep 64 KiB for each one.
export function getEnv(name: string, fallback: string): string {
  const cap = 4096
  const buf = __alloc(cap)
  const n = __getenv(netCstr(name), buf, cap)
  if (n < 0) return fallback
  const r = __str_alloc(n)
  __memcpy(__toaddr(r) + 8, buf, n)
  return r
}

export function listen(port: number, anyHost: boolean): number {
  return __listen(anyHost ? 1 : 0, port, 128)
}

export function accept(fd: number, waitMs: number, ioMs: number): number {
  return __accept(fd, waitMs, ioMs)
}

export function recv(fd: number, max: number): Chunk {
  const buf = __alloc(max)
  const n = __read(fd, buf, max)
  if (n < 0) return { data: "", err: n }
  const r = __str_alloc(n)
  __memcpy(__toaddr(r) + 8, buf, n)
  return { data: r, err: 0 }
}

export function pollFd(fd: number, events: number, waitMs: number): number {
  return __poll(fd, events, waitMs)
}

export function sendAll(fd: number, data: string): number {
  const a = __toaddr(data)
  const total = __ldi(a)
  let done = 0
  while (done < total) {
    const n = __write(fd, a + 8 + done, total - done)
    if (n < 0) return n
    if (n === 0) return -5
    done = done + n
  }
  return 0
}

export function finishWriting(fd: number): number {
  return __shutdown(fd, 1)
}

export function closeFd(fd: number): void {
  __close(fd)
}

export function nowMs(): number {
  return Math.floor(__time(1) / 1000000)
}

export function bufNew(cap: number): number {
  return __alloc(cap)
}

export function bufRecv(fd: number, buf: number, offset: number, max: number): number {
  return __read(fd, buf + offset, max)
}

export function bufFindHead(buf: number, from: number, end: number): number {
  let i = from
  while (i < end) {
    if (__ld8(buf + i) === 10) {
      if (i + 1 < end && __ld8(buf + i + 1) === 10) return i + 2
      if (i + 2 < end && __ld8(buf + i + 1) === 13 && __ld8(buf + i + 2) === 10) return i + 3
    }
    i++
  }
  return -1
}

export function bufSlice(buf: number, from: number, to: number): string {
  const n = to - from
  const r = __str_alloc(n)
  __memcpy(__toaddr(r) + 8, buf + from, n)
  return r
}

export function bufPut(buf: number, offset: number, s: string): void {
  const a = __toaddr(s)
  __memcpy(buf + offset, a + 8, __ldi(a))
}

export function localPort(fd: number): number {
  return __sockport(fd)
}

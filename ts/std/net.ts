// Environment and sockets, for node. A program compiled with chts gets net_chvm.ts in its place, which
// uses the chvm system calls and needs chvm -N.
//
// Node cannot wait for a connection without an event loop, so under node only getEnv is real. The
// socket functions fail, and a server written on them does nothing under node. Run it on chvm. A program
// is tested under node by calling its request function on strings, as the Praline tests do.

export interface Chunk {
  data: string        // the bytes that arrived
  err: number         // 0, or a negative error number. With err 0 and no data the other side has closed.
}

const NO_SOCKETS: number = -38

export function getEnv(name: string, fallback: string): string {
  const v = process.env[name]
  if (v === undefined) return fallback
  return v
}

// A listening socket, or a negative error number. port 0 picks a free port. anyHost is false for
// 127.0.0.1 only and true for every network interface.
export function listen(port: number, anyHost: boolean): number {
  return NO_SOCKETS
}

// The next connection, or a negative error number: -110 when waitMs ran out (waitMs -1 waits for ever),
// -11 when the client went away first. ioMs ends a read or write on the connection that is stuck.
export function accept(fd: number, waitMs: number, ioMs: number): number {
  return -9
}

// Up to max bytes. A read that is stuck for the io time gives err -11.
export function recv(fd: number, max: number): Chunk {
  return { data: "", err: -9 }
}

// Bit 1: can read. Bit 2: can write. Bit 4: error or hang-up. 0: the wait ran out.
export function pollFd(fd: number, events: number, waitMs: number): number {
  return -9
}

// All of data, or a negative error number. A client that has gone gives -32.
export function sendAll(fd: number, data: string): number {
  return -9
}

// Tells the client no more data is coming, without closing yet.
export function finishWriting(fd: number): number {
  return -9
}

export function closeFd(fd: number): void {
}

// Milliseconds on a clock that only goes forward.
export function nowMs(): number {
  return Math.floor(performance.now())
}

// Fixed byte buffers for reading a request without allocating. A buffer is a number: under chvm its address,
// under node an index. Memory for one is taken once, at start up, and never freed.
const nodeBufs: Buffer[] = []

export function bufNew(cap: number): number {
  nodeBufs.push(Buffer.alloc(cap))
  return nodeBufs.length - 1
}

// Reads up to max bytes from the connection into the buffer at offset. Returns the count (0 when the other
// side closed) or a negative error number.
export function bufRecv(fd: number, buf: number, offset: number, max: number): number {
  return -9
}

// Where the empty line that ends the header part of a request is: the index just after it, or -1. Both
// CRLF CRLF and LF LF end it. Looks only at bytes from..end. Pass a from a little before the new bytes.
export function bufFindHead(buf: number, from: number, end: number): number {
  const b = nodeBufs[buf]
  let i = from
  while (i < end) {
    if (b[i] === 10) {
      if (i + 1 < end && b[i + 1] === 10) return i + 2
      if (i + 2 < end && b[i + 1] === 13 && b[i + 2] === 10) return i + 3
    }
    i++
  }
  return -1
}

export function bufSlice(buf: number, from: number, to: number): string {
  return nodeBufs[buf].toString("latin1", from, to)
}

// Puts text into the buffer at offset (for tests under node).
export function bufPut(buf: number, offset: number, s: string): void {
  nodeBufs[buf].write(s, offset, "latin1")
}

export function localPort(fd: number): number {
  return -9
}

// The chvm version of fs.ts, built on system calls.

export interface FileResult {
  code: number
  data: string
}

function fsCstr(s: string): number {
  const n = s.length
  const p = __alloc(n + 1)
  __memcpy(p, __toaddr(s) + 8, n)
  __st8(p + n, 0)
  return p
}

// The file's bytes, read once into a string of exactly the file's size. A directory, a missing file,
// a file that is not a regular file and a file larger than maxBytes each give a code and no data.
export function readFileSafe(path: string, maxBytes: number): FileResult {
  const fd = __open(fsCstr(path), 0, 0)
  if (fd < 0) return { code: 0 - fd, data: "" }
  const probe = __alloc(8)
  const first = __read(fd, probe, 1)
  if (first < 0) {
    __close(fd)
    return { code: 0 - first, data: "" }
  }
  const size = __seek(fd, 0, 2)
  if (size < 0) {
    __close(fd)
    return { code: 5, data: "" }
  }
  if (size > maxBytes) {
    __close(fd)
    return { code: 27, data: "" }
  }
  __seek(fd, 0, 0)
  const r = __str_alloc(size)
  let got = 0
  while (got < size) {
    const n = __read(fd, __toaddr(r) + 8 + got, size - got)
    if (n <= 0) break
    got = got + n
  }
  __close(fd)
  // the file got shorter while it was being read: keep what was read
  if (got !== size) __sti(__toaddr(r), got)
  return { code: 0, data: r }
}

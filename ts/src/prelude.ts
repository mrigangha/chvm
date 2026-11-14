// The runtime. It is compiled together with every program, in the same language.
//
// Memory layout of values (every slot is 8 bytes):
//   number     a double
//   boolean    0 or 1
//   string     address of [byte length][bytes ...], padded to 8
//   T[]        address of [length][capacity][address of the elements]
//   interface  address of one slot per field
// Pointers are held in 'any' values and moved to numbers with __toaddr. They are never
// interpreted as numbers by the program.

let __hp: number = 0
let __he: number = 0

// Round up to a multiple of 8 and hand out zeroed memory.
function __alloc(n: number): number {
  const size = Math.floor((n + 7) / 8) * 8
  if (__hp + size > __he) {
    let grow = 1048576
    if (size > grow) grow = Math.floor((size + 1048575) / 1048576) * 1048576
    const got = __sbrk(grow)
    if (got < 0) {
      __die("out of memory")
    }
    if (__he === 0) __hp = got
    else if (got !== __he) __hp = got
    __he = got + grow
  }
  const p = __hp
  __hp = __hp + size
  return p
}

function __die(msg: string): void {
  __print(2, "error: " + msg + "\n")
  __trap()
}

function __print(fd: number, s: string): void {
  const a = __toaddr(s)
  __write(fd, a + 8, __ldi(a))
}

// ---- strings ----

function __str_alloc(len: number): string {
  const p = __alloc(len + 8)
  __sti(p, len)
  return __fromaddr(p)
}

function __str_concat(a: string, b: string): string {
  const pa = __toaddr(a)
  const pb = __toaddr(b)
  const la = __ldi(pa)
  const lb = __ldi(pb)
  const r = __str_alloc(la + lb)
  const pr = __toaddr(r)
  __memcpy(pr + 8, pa + 8, la)
  __memcpy(pr + 8 + la, pb + 8, lb)
  return r
}

function __str_eq(a: string, b: string): boolean {
  const pa = __toaddr(a)
  const pb = __toaddr(b)
  const la = __ldi(pa)
  if (la !== __ldi(pb)) return false
  return __memcmp(pa + 8, pb + 8, la) === 0
}

// -1, 0 or 1 by byte order, then by length.
function __str_cmp(a: string, b: string): number {
  const pa = __toaddr(a)
  const pb = __toaddr(b)
  const la = __ldi(pa)
  const lb = __ldi(pb)
  let m = la
  if (lb < m) m = lb
  const c = __memcmp(pa + 8, pb + 8, m)
  if (c !== 0) return c
  if (la < lb) return -1
  if (la > lb) return 1
  return 0
}

function __str_charCodeAt(s: string, i: number): number {
  const p = __toaddr(s)
  const k = Math.trunc(i)
  if (k < 0 || k >= __ldi(p)) __die("string index out of range")
  return __ld8(p + 8 + k)
}

function __str_slice(s: string, from: number, to: number): string {
  const p = __toaddr(s)
  const n = __ldi(p)
  let a = Math.trunc(from)
  let b = Math.trunc(to)
  if (a < 0) a = Math.max(0, n + a)
  if (b < 0) b = Math.max(0, n + b)
  if (a > n) a = n
  if (b > n) b = n
  if (b <= a) return __str_alloc(0)
  const r = __str_alloc(b - a)
  __memcpy(__toaddr(r) + 8, p + 8 + a, b - a)
  return r
}

function __str_indexOf(s: string, t: string): number {
  const ps = __toaddr(s)
  const pt = __toaddr(t)
  const n = __ldi(ps)
  const m = __ldi(pt)
  let i = 0
  while (i + m <= n) {
    if (__memcmp(ps + 8 + i, pt + 8, m) === 0) return i
    i++
  }
  return -1
}

function __str_fromCharCode(c: number): string {
  const r = __str_alloc(1)
  __st8(__toaddr(r) + 8, c)
  return r
}

// number -> string, as JavaScript prints it
function __num_str(x: number): string {
  const tmp = __alloc(32)
  const n = __fmtnum(tmp, x, 0)
  const r = __str_alloc(n)
  __memcpy(__toaddr(r) + 8, tmp, n)
  return r
}

function __bool_str(b: boolean): string {
  if (b) return "true"
  return "false"
}

// console.log: numbers print as console.log does, so -0 shows as -0.
function __log_num(fd: number, x: number): void {
  const tmp = __alloc(32)
  const n = __fmtnum(tmp, x, 1)
  __write(fd, tmp, n)
}

// Number(s): trims blanks, empty is 0, anything else that is not a number is NaN.
function __str_num(s: string): number {
  const p = __toaddr(s)
  return __parsenum(p + 8, __ldi(p))
}

// ---- arrays ----

function __arr_new(n: number): any {
  const h = __alloc(24)
  const cap = Math.max(n, 4)
  const data = __alloc(cap * 8)
  __sti(h, n)
  __sti(h + 8, cap)
  __sti(h + 16, data)
  return __fromaddr(h)
}

function __arr_len(a: any): number {
  return __ldi(__toaddr(a))
}

// The address of element i, or a stop when i is outside the array.
function __arr_at(a: any, i: number): number {
  const h = __toaddr(a)
  const k = Math.trunc(i)
  if (k < 0 || k >= __ldi(h)) __die("array index " + __num_str(k) + " is out of range")
  return __ldi(h + 16) + k * 8
}

function __arr_push_raw(a: any, bits: any): void {
  const h = __toaddr(a)
  const n = __ldi(h)
  const cap = __ldi(h + 8)
  let data = __ldi(h + 16)
  if (n === cap) {
    const ncap = cap * 2
    const nd = __alloc(ncap * 8)
    __memcpy(nd, data, n * 8)
    __sti(h + 8, ncap)
    __sti(h + 16, nd)
    data = nd
  }
  __stp(data + n * 8, bits)
  __sti(h, n + 1)
}

function __arr_pop_raw(a: any): any {
  const h = __toaddr(a)
  const n = __ldi(h)
  if (n === 0) __die("pop from an empty array")
  __sti(h, n - 1)
  return __ldp(__ldi(h + 16) + (n - 1) * 8)
}

function __arr_slice_raw(a: any, from: number, to: number): any {
  const h = __toaddr(a)
  const n = __ldi(h)
  let x = Math.trunc(from)
  let y = Math.trunc(to)
  if (x < 0) x = Math.max(0, n + x)
  if (y < 0) y = Math.max(0, n + y)
  if (x > n) x = n
  if (y > n) y = n
  if (y < x) y = x
  const r: any = __arr_new(y - x)
  __memcpy(__ldi(__toaddr(r) + 16), __ldi(h + 16) + x * 8, (y - x) * 8)
  return r
}

function __arr_slice(a: any, from: number, to: number): any {
  return __arr_slice_raw(a, from, to)
}

function __arr_join(a: string[], sep: string): string {
  const h = __toaddr(a)
  const n = __ldi(h)
  const data = __ldi(h + 16)
  const sp = __toaddr(sep)
  const sl = __ldi(sp)
  let total = 0
  let i = 0
  while (i < n) {
    total = total + __ldi(__ldi(data + i * 8)) + (i > 0 ? sl : 0)
    i++
  }
  const r = __str_alloc(total)
  let at = __toaddr(r) + 8
  i = 0
  while (i < n) {
    if (i > 0) {
      __memcpy(at, sp + 8, sl)
      at = at + sl
    }
    const e = __ldi(data + i * 8)
    const el = __ldi(e)
    __memcpy(at, e + 8, el)
    at = at + el
    i++
  }
  return r
}

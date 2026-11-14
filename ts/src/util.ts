// A string -> number table (open addressing). Values must be 0 or more, -1 means "absent".
export interface IndexMap {
  keys: string[]
  vals: number[]
  used: number
  cap: number
}

function hashStr(s: string): number {
  let h = 5381
  let i = 0
  while (i < s.length) {
    h = (h * 33 + s.charCodeAt(i)) % 2147483629
    i++
  }
  return h
}

function mapAlloc(cap: number): IndexMap {
  const keys: string[] = []
  const vals: number[] = []
  let i = 0
  while (i < cap) {
    keys.push("")
    vals.push(-1)
    i++
  }
  return { keys: keys, vals: vals, used: 0, cap: cap }
}

export function newMap(): IndexMap {
  return mapAlloc(64)
}

export function mapFind(m: IndexMap, key: string): number {
  let i = hashStr(key) % m.cap
  while (m.vals[i] !== -1) {
    if (m.keys[i] === key) return m.vals[i]
    i = (i + 1) % m.cap
  }
  return -1
}

function mapInsert(m: IndexMap, key: string, val: number): void {
  let i = hashStr(key) % m.cap
  while (m.vals[i] !== -1) {
    if (m.keys[i] === key) {
      m.vals[i] = val
      return
    }
    i = (i + 1) % m.cap
  }
  m.keys[i] = key
  m.vals[i] = val
  m.used++
}

export function mapSet(m: IndexMap, key: string, val: number): void {
  if ((m.used + 1) * 2 > m.cap) {
    const bigger = mapAlloc(m.cap * 2)
    let i = 0
    while (i < m.cap) {
      if (m.vals[i] !== -1) mapInsert(bigger, m.keys[i], m.vals[i])
      i++
    }
    m.keys = bigger.keys
    m.vals = bigger.vals
    m.cap = bigger.cap
    m.used = bigger.used
  }
  mapInsert(m, key, val)
}

export function startsWith(s: string, p: string): boolean {
  if (p.length > s.length) return false
  return s.slice(0, p.length) === p
}

export function endsWith(s: string, p: string): boolean {
  if (p.length > s.length) return false
  return s.slice(s.length - p.length) === p
}

export function lastIndexOfChar(s: string, c: number): number {
  let i = s.length - 1
  while (i >= 0) {
    if (s.charCodeAt(i) === c) return i
    i--
  }
  return -1
}

export function repeatStr(s: string, n: number): string {
  const parts: string[] = []
  let i = 0
  while (i < n) {
    parts.push(s)
    i++
  }
  return parts.join("")
}

// s without any occurrence of the single character c
export function removeChar(s: string, c: number): string {
  const parts: string[] = []
  let start = 0
  let i = 0
  while (i < s.length) {
    if (s.charCodeAt(i) === c) {
      parts.push(s.slice(start, i))
      start = i + 1
    }
    i++
  }
  parts.push(s.slice(start, s.length))
  return parts.join("")
}

import { plCharIndex, plHas, plIsDigits } from "./strings.ts"
import { percentDecode } from "./decode.ts"

export interface Lookup {
  index: number      // the route that matches the method and the path, or -1
  allow: string[]    // every method that has a route for the path
}

function plIsName(s: string): boolean {
  if (s.length === 0) return false
  let i = 0
  while (i < s.length) {
    const c = s.charCodeAt(i)
    const letter = (c >= 65 && c <= 90) || (c >= 97 && c <= 122) || c === 95
    if (!letter && !(i > 0 && c >= 48 && c <= 57)) return false
    i++
  }
  return true
}

// The name inside a segment like <slug> or <int:id>.
function plParamName(seg: string): string {
  if (seg.length > 5 && seg.slice(1, 5) === "int:") return seg.slice(5, seg.length - 1)
  return seg.slice(1, seg.length - 1)
}

// "" when the pattern is usable, or a message. A parameter fills a whole segment: <name> or <int:name>.
export function plPatternError(pattern: string): string {
  if (pattern.length === 0 || pattern.charCodeAt(0) !== 47) return "the pattern '" + pattern + "' must start with /"
  const seen: string[] = []
  let pi = 1
  while (true) {
    let pe = plCharIndex(pattern, 47, pi)
    if (pe < 0) pe = pattern.length
    const seg = pattern.slice(pi, pe)
    if (plCharIndex(seg, 60, 0) >= 0 || plCharIndex(seg, 62, 0) >= 0) {
      if (seg.charCodeAt(0) !== 60 || seg.charCodeAt(seg.length - 1) !== 62) {
        return "in '" + pattern + "' a parameter must fill a whole segment, like <name> or <int:name>"
      }
      const name = plParamName(seg)
      if (!plIsName(name)) return "in '" + pattern + "' the parameter name '" + name + "' is not a name"
      if (plHas(seen, name)) return "in '" + pattern + "' the parameter '" + name + "' is used twice"
      seen.push(name)
    }
    if (pe >= pattern.length) break
    pi = pe + 1
  }
  return ""
}

// The pattern with each parameter name removed, so /a/<x> and /a/<y> have the same shape.
export function plShape(pattern: string): string {
  let out = ""
  let pi = 1
  while (true) {
    let pe = plCharIndex(pattern, 47, pi)
    if (pe < 0) pe = pattern.length
    const seg = pattern.slice(pi, pe)
    if (seg.length > 0 && seg.charCodeAt(0) === 60) out += seg.length > 5 && seg.slice(1, 5) === "int:" ? "/<int>" : "/<>"
    else out += "/" + seg
    if (pe >= pattern.length) break
    pi = pe + 1
  }
  return out
}

// How general a pattern is: each literal segment costs 0, an <int:name> costs 1 and a <name> costs 2.
// The lowest cost wins, so /user/me beats /user/<int:id>, which beats /user/<name>.
function plCost(pattern: string): number {
  let cost = 0
  let pi = 1
  while (true) {
    let pe = plCharIndex(pattern, 47, pi)
    if (pe < 0) pe = pattern.length
    const seg = pattern.slice(pi, pe)
    if (seg.length > 0 && seg.charCodeAt(0) === 60) cost += seg.length > 5 && seg.slice(1, 5) === "int:" ? 1 : 2
    if (pe >= pattern.length) break
    pi = pe + 1
  }
  return cost
}

// Does the path fit the pattern? Walks both one segment at a time. A literal segment must equal the
// decoded path segment. A <name> takes any non-empty decoded segment, and <int:name> takes 1 to 9
// digits. With capture, the parameters are added to names and values.
export function plWalk(pattern: string, path: string, names: string[], values: string[], capture: boolean): boolean {
  let pi = 1
  let qi = 1
  while (true) {
    let pe = plCharIndex(pattern, 47, pi)
    if (pe < 0) pe = pattern.length
    let qe = plCharIndex(path, 47, qi)
    if (qe < 0) qe = path.length
    const pseg = pattern.slice(pi, pe)
    const qseg = path.slice(qi, qe)
    if (pseg.length > 0 && pseg.charCodeAt(0) === 60) {
      const isInt = pseg.length > 5 && pseg.slice(1, 5) === "int:"
      const v = percentDecode(qseg, false)
      if (v.length === 0) return false
      if (isInt && (!plIsDigits(v) || v.length > 9)) return false
      if (capture) {
        names.push(plParamName(pseg))
        values.push(v)
      }
    } else if (percentDecode(qseg, false) !== pseg) {
      return false
    }
    const pend = pe >= pattern.length
    const qend = qe >= path.length
    if (pend || qend) return pend && qend
    pi = pe + 1
    qi = qe + 1
  }
}

// The route for the method and path. When several match, the least general one wins (see plCost),
// and the first one set wins a tie.
export function plLookup(methods: string[], patterns: string[], method: string, path: string): Lookup {
  const allow: string[] = []
  const none: string[] = []
  let found = -1
  let foundParams = 0
  let i = 0
  while (i < patterns.length) {
    if (plWalk(patterns[i], path, none, none, false)) {
      if (!plHas(allow, methods[i])) allow.push(methods[i])
      if (methods[i] === method) {
        const pc = plCost(patterns[i])
        if (found < 0 || pc < foundParams) {
          found = i
          foundParams = pc
        }
      }
    }
    i++
  }
  return { index: found, allow: allow }
}

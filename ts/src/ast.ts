// Types and syntax tree. Unused node fields point at NIL, and a missing type is NOTYPE,
// so the language does not need null.

export interface Type {
  kind: string      // "number" "string" "boolean" "void" "any" "array" "iface" "name" "none"
  name: string      // interface name, or the written name while kind is "name"
  elem: Type        // element type of an array
  fnames: string[]  // interface field names
  ftypes: Type[]    // interface field types
}

export interface Node {
  kind: string
  text: string
  num: number
  line: number
  col: number
  a: Node
  b: Node
  c: Node
  d: Node
  list: Node[]
  ann: Type         // written type: variable, parameter, field or return type
  ty: Type          // type of an expression, set by the checker
  slot: number      // storage slot or other per-node number, set by the checker
  tag: string       // extra text from the checker (function label, kind of access)
  file: string
  reg: number       // register assigned to a local, or -1 when it lives in the frame
}

// The sentinels point at themselves. ZERO is an untyped 0 used only to build them,
// then every field is patched to the sentinel.
const ZERO: any = 0

export const NOTYPE: Type = { kind: "none", name: "", elem: ZERO, fnames: [], ftypes: [] }
NOTYPE.elem = NOTYPE

export const NIL: Node = {
  kind: "nil", text: "", num: 0, line: 0, col: 0,
  a: ZERO, b: ZERO, c: ZERO, d: ZERO,
  list: [], ann: NOTYPE, ty: NOTYPE, slot: 0, tag: "", file: "", reg: -1,
}
NIL.a = NIL
NIL.b = NIL
NIL.c = NIL
NIL.d = NIL

export function mkNode(kind: string, file: string, line: number, col: number): Node {
  return {
    kind: kind, text: "", num: 0, line: line, col: col,
    a: NIL, b: NIL, c: NIL, d: NIL,
    list: [], ann: NOTYPE, ty: NOTYPE, slot: 0, tag: "", file: file, reg: -1,
  }
}

export function mkType(kind: string, name: string, elem: Type): Type {
  return { kind: kind, name: name, elem: elem, fnames: [], ftypes: [] }
}

interface Point { x: number; y: number }
interface Named { name: string; pos: Point; tags: string[] }
function add(a: Point, b: Point): Point {
  return { x: a.x + b.x, y: a.y + b.y }
}
const p: Point = { x: 1, y: 2 }
const q: Point = { x: 10, y: 20 }
const r: Point = add(p, q)
console.log(r.x, r.y)
r.x = 99
r.y += 1
console.log(r.x, r.y, p.x)
const alias: Point = r
alias.x = 5
console.log(r.x)
const n: Named = { name: "box", pos: p, tags: ["a", "b"] }
n.pos.x = 7
n.tags.push("c")
console.log(n.name, n.pos.x, p.x, n.tags.length, n.tags.join("+"))
const pts: Point[] = [{ x: 1, y: 1 }, { x: 2, y: 4 }]
pts.push({ x: 3, y: 9 })
let total = 0
for (let i = 0; i < pts.length; i++) total += pts[i].x * pts[i].y
console.log(total, pts[2].y)
pts[0].x = 100
console.log(pts[0].x)
interface Node { value: number; next: any; last: boolean }
// a list ends in a node that points at itself, because the language has no null
const end: Node = { value: 3, next: 0, last: true }
end.next = end
const mid: Node = { value: 2, next: end, last: false }
const head: Node = { value: 1, next: mid, last: false }
let cur: Node = head
let s = 0
while (!cur.last) {
  s += cur.value
  cur = cur.next
}
console.log(s, cur.value, cur.next === cur)

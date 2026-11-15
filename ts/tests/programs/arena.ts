import { arenaMark, arenaFree } from "../../lib/arena.ts"

interface Item { id: number; label: string; tags: string[] }

function render(i: number): number {
  const tags: string[] = ["a" + i, "b" + i, "c" + i]
  const item: Item = { id: i, label: "item " + i, tags: tags }
  const page = item.label + ": " + item.tags.join(",")
  return page.length
}

// work that is kept: allocated before the mark
const kept: string[] = []
kept.push("header")
kept.push("footer")

// a long loop whose per-round garbage is released every round
let total = 0
const mark = arenaMark()
for (let round = 0; round < 30000; round++) {
  total += render(round)
  arenaFree(mark)
}
console.log(total, kept.join("+"))

// nesting: an inner mark inside an outer one
const outer = arenaMark()
const a = "outer value " + 1
const inner = arenaMark()
const b = "inner value " + 2
console.log(a, b)
arenaFree(inner)
arenaFree(outer)
console.log("done")

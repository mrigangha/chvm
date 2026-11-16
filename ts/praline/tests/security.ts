import type { Context } from "../context.ts"
import { newContext, setVar, setList } from "../context.ts"
import { newTemplates, addTemplate, renderString } from "../template.ts"

function show(label: string, s: string): void {
  console.log(label + ": " + s)
}

function main(): void {
  const ts = newTemplates("praline/tests/templates")
  const c = newContext()

  // a value is data: template syntax inside it is printed, never run
  setVar(c, "evil", "{{ secret }}{% include \"base.html\" %}{% if x %}")
  setVar(c, "secret", "SECRET")
  addTemplate(ts, "data", "[{{ evil }}] [{{{ evil }}}]")
  show("template syntax in a value", renderString(ts, "data", c))

  // a value with markup is escaped, in text and in an attribute
  setVar(c, "mark", "<img src=x onerror=alert(1)>\" onmouseover=\"alert(2)' x")
  addTemplate(ts, "markup", "<p>{{ mark }}</p><a title=\"{{ mark }}\" href='{{ mark }}'>x</a>")
  show("markup escaped", renderString(ts, "markup", c))

  // names cannot reach anything but the variables that were set
  addTemplate(ts, "names", "{{ constructor }}|{{ __proto__ }}|{{ toString }}|{{ length }}|{{ names }}|{{ values }}|{{ a.b.c.d }}")
  show("names that are special in JavaScript", renderString(ts, "names", c))

  // a variable named like a loop variable, and a loop that hides it
  const items: Context[] = []
  const it = newContext()
  setVar(it, "v", "inner")
  items.push(it)
  setVar(c, "it", "outer")
  setList(c, "items", items)
  addTemplate(ts, "scope", "{{ it }} {% for it in items %}{{ it.v }}{% endfor %} {{ it }}")
  show("loop variable hides then restores", renderString(ts, "scope", c))

  // a big loop and a big value
  const many: Context[] = []
  let i = 0
  while (i < 2000) {
    const m = newContext()
    setVar(m, "n", "" + i)
    many.push(m)
    i++
  }
  setList(c, "many", many)
  addTemplate(ts, "many", "{% for m in many %}{{ m.n }},{% endfor %}")
  const out = renderString(ts, "many", c)
  show("2000 rows", out.length + " " + out.slice(0, 12) + " " + out.slice(out.length - 12, out.length))
  setVar(c, "big", "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<")
  addTemplate(ts, "big", "{{ big }}")
  show("escape grows the text", renderString(ts, "big", c).length + "")
}
main()

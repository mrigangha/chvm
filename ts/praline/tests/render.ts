import type { Context } from "../context.ts"
import { newContext, setVar, setNumber, setList, setObject } from "../context.ts"
import { newTemplates, loadTemplate, addTemplate, renderString } from "../template.ts"

function mk(label: string, url: string, current: boolean): Context {
  const c = newContext()
  setVar(c, "label", label)
  setVar(c, "url", url)
  setVar(c, "current", current ? "yes" : "")
  return c
}

function cell(v: string): Context {
  const c = newContext()
  setVar(c, "v", v)
  return c
}

function row(cells: Context[]): Context {
  const c = newContext()
  setList(c, "cells", cells)
  return c
}

function show(label: string, s: string): void {
  console.log("== " + label)
  let out = ""
  let i = 0
  while (i < s.length) {
    const c = s.charCodeAt(i)
    out += c === 10 ? "$\n" : String.fromCharCode(c)
    i++
  }
  console.log(out)
}

function main(): void {
  const ts = newTemplates("praline/tests/templates")

  const c = newContext()
  setVar(c, "site", "Mrig & Co")
  setVar(c, "title", "About <me>")
  setList(c, "links", [mk("Home", "/", false), mk("About", "/about?a=1&b=2", true)])
  const author = newContext()
  setVar(author, "name", "Ann \"A\" O'Neil")
  setVar(author, "admin", "1")
  setObject(c, "author", author)

  loadTemplate(ts, "page.html")
  loadTemplate(ts, "child2.html")
  loadTemplate(ts, "base.html")
  loadTemplate(ts, "loop.html")
  show("page extends base, includes nav and card", renderString(ts, "page.html", c))
  show("two levels", renderString(ts, "child2.html", c))
  show("base alone, default blocks", renderString(ts, "base.html", c))
  setList(c, "rows", [row([cell("a"), cell("b"), cell("c")]), row([cell("d")]), row([])])
  show("nested loops, loop.index belongs to the inner one", renderString(ts, "loop.html", c))

  const t2 = newTemplates("praline/tests/templates")
  const d = newContext()
  setVar(d, "x", "1")
  setVar(d, "e", "")
  setVar(d, "s", "yes")
  const o = newContext()
  setVar(o, "k", "v")
  setObject(d, "obj", o)
  setList(d, "none", [])
  setList(d, "some", [cell("p")])
  addTemplate(t2, "if", "{% if x %}A{% endif %}{% if e %}B{% endif %}{% if missing %}C{% endif %}{% if obj %}D{% endif %}{% if none %}E{% endif %}{% if some %}F{% endif %}|{% if not x %}G{% endif %}{% if not e %}H{% endif %}{% if not missing %}I{% endif %}")
  addTemplate(t2, "cmp", "{% if s == \"yes\" %}1{% endif %}{% if s == 'no' %}2{% endif %}{% if s != \"no\" %}3{% endif %}{% if s != 'yes' %}4{% endif %}{% if missing == \"\" %}5{% endif %}{% if missing != \"\" %}6{% endif %}{% if obj.k == \"v\" %}7{% endif %}")
  addTemplate(t2, "else", "{% if e %}yes{% else %}no{% endif %} {% for q in none %}x{% else %}empty{% endfor %} {% for q in missing %}x{% else %}missing{% endfor %} {% for q in some %}[{{ q.v }}]{% else %}empty{% endfor %}")
  addTemplate(t2, "esc", "{{ x }} {{{ x }}} {{x}} {{  x  }} {{ obj.k }} {{ obj }} {{ none }} {{ missing }} {{ obj.nope }} {{ x.y }}.")
  addTemplate(t2, "braces", "a { b } {c} {{ x }}} {% if x %}{ok}{% endif %} { {{ x }} {# note #}end #} {x")
  addTemplate(t2, "lines", "start\n  {% if x %}  \nkept\n  {% endif %}\n{# gone #}\nend {% if x %}inline{% endif %} tail\n")
  addTemplate(t2, "lineno", "one\ntwo\n{{ x }}\n")
  addTemplate(t2, "loopvars", "{% for q in some %}{{ loop.index }}{{ loop.index0 }}{{ loop.first }}{{ loop.last }}{{ loop.length }}{{ q.v }}{% endfor %} {{ loop.index }}")
  addTemplate(t2, "shadow", "{% for x in some %}{{ x.v }}{% endfor %}{{ x }}")
  setNumber(d, "n", 3.5)
  addTemplate(t2, "number", "{{ n }}")
  const names = ["if", "cmp", "else", "esc", "braces", "lines", "loopvars", "shadow", "number"]
  let i = 0
  while (i < names.length) {
    show(names[i], renderString(t2, names[i], d))
    i++
  }
  t2.strict = true
  show("strict", renderString(t2, "esc", d))
}
main()

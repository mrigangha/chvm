import { newTemplates, loadTemplate } from "../template.ts"

function main(): void {
  const ts = newTemplates("praline/tests/templates")
  console.log("start")
  loadTemplate(ts, "bad/outside.html")
  console.log("not reached")
}
main()

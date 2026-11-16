import { newTemplates, loadTemplate } from "../template.ts"

function main(): void {
  const ts = newTemplates("praline/tests/templates")
  console.log("start")
  loadTemplate(ts, "bad/if_not_cmp.html")
  console.log("not reached")
}
main()

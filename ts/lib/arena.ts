// Manual memory cleanup for programs that run for a long time.
//
//   const mark = arenaMark()      remember the current end of the heap
//   ... allocate strings, arrays, objects ...
//   arenaFree(mark)               free everything allocated since the mark, all at once
//
// Under chvm these are two machine instructions. After arenaFree, anything created since the mark
// is gone, so nothing that is still needed may point into it: copy what you want to keep before
// the mark, or make it before the mark. Under node, where memory is collected anyway, both do nothing,
// so the same file runs in both and prints the same output.
//
// The chts compiler does not load this file. It knows the two names, so the import only has to satisfy node.

export function arenaMark(): number {
  return 0
}

export function arenaFree(mark: number): void {
}

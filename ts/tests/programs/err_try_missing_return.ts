function f(): number {
  try {
    return 1
  } catch (e: any) {
    console.log(e)
  }
}
console.log(f())

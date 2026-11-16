function f(): void {
  while (true) {
    try {
      console.log("x")
    } finally {
      break
    }
  }
}
f()

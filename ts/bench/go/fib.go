package main

import "fmt"

func fib(n float64) float64 {
	if n < 2 {
		return n
	}
	return fib(n-1) + fib(n-2)
}

func main() { fmt.Printf("%.0f\n", fib(32)) }

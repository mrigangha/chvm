package main

import (
	"fmt"
	"math"
)

func steps(n float64) float64 {
	c := 0.0
	for n != 1 {
		if math.Mod(n, 2) == 0 {
			n = n / 2
		} else {
			n = 3*n + 1
		}
		c++
	}
	return c
}

func main() {
	best, bestN := 0.0, 0.0
	for i := 1.0; i < 300000; i++ {
		s := steps(i)
		if s > best {
			best = s
			bestN = i
		}
	}
	fmt.Println(bestN, best)
}

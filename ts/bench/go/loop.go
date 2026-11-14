package main

import (
	"fmt"
	"math"
)

var sum float64

func main() {
	for i := 0.0; i < 50000000; i++ {
		sum += math.Mod(i, 7)
	}
	fmt.Printf("%.0f\n", sum)
}

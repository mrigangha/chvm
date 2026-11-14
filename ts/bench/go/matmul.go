package main

import "fmt"

func main() {
	n := 120.0
	var a, b, c [][]float64
	for i := 0.0; i < n; i++ {
		var ra, rb, rc []float64
		for j := 0.0; j < n; j++ {
			ra = append(ra, i+j)
			rb = append(rb, i-j)
			rc = append(rc, 0)
		}
		a = append(a, ra)
		b = append(b, rb)
		c = append(c, rc)
	}
	for i := 0.0; i < n; i++ {
		for j := 0.0; j < n; j++ {
			s := 0.0
			for k := 0.0; k < n; k++ {
				s += a[int(i)][int(k)] * b[int(k)][int(j)]
			}
			c[int(i)][int(j)] = s
		}
	}
	fmt.Printf("%.0f %.0f %.0f\n", c[0][0], c[119][119], c[10][20])
}

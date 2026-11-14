package main

import (
	"fmt"
	"strconv"
	"strings"
)

func numStr(v float64) string { return strconv.FormatFloat(v, 'f', -1, 64) }

func main() {
	var parts []string
	for i := 0.0; i < 200000; i++ {
		parts = append(parts, "item"+numStr(i))
	}
	joined := strings.Join(parts, ",")
	fmt.Println(len(joined))
	count := 0.0
	for i := 0.0; i < float64(len(joined)); i++ {
		if joined[int(i)] == 44 {
			count++
		}
	}
	fmt.Println(count)
	s := ""
	for i := 0.0; i < 3000; i++ {
		s += "x" + numStr(i)
	}
	fmt.Println(len(s))
}

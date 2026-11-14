package main

import "fmt"

func main() {
	n := 5000000.0
	var flags []bool
	for i := 0.0; i <= n; i++ {
		flags = append(flags, true)
	}
	flags[0] = false
	flags[1] = false
	for i := 2.0; i*i <= n; i++ {
		if flags[int(i)] {
			for j := i * i; j <= n; j += i {
				flags[int(j)] = false
			}
		}
	}
	count := 0.0
	for i := 0.0; i <= n; i++ {
		if flags[int(i)] {
			count++
		}
	}
	fmt.Println(count)
}

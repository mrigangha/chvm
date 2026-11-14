package main

import "fmt"

type Particle struct{ x, y, vx, vy float64 }

func main() {
	var ps []*Particle
	for i := 0.0; i < 1000; i++ {
		ps = append(ps, &Particle{i, i * 2, 1, -1})
	}
	for step := 0.0; step < 2000; step++ {
		for i := 0.0; i < float64(len(ps)); i++ {
			p := ps[int(i)]
			p.x += p.vx
			p.y += p.vy
			if p.x > 500 {
				p.vx = -1
			}
			if p.x < 0 {
				p.vx = 1
			}
		}
	}
	sx, sy := 0.0, 0.0
	for i := 0.0; i < float64(len(ps)); i++ {
		sx += ps[int(i)].x
		sy += ps[int(i)].y
	}
	fmt.Printf("%.0f %.0f\n", sx, sy)
}

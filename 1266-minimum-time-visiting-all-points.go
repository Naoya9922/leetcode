// https://leetcode.com/problems/minimum-time-visiting-all-points/

import "math"

func minTimeToVisitAllPoints(points [][]int) int {
	dist := 0
	for i, point := range points {
		if i == 0 {
			continue
		}
		prevPoint := points[i-1]
		distX := int(math.Abs(float64(point[0]) - float64(prevPoint[0])))
		distY := int(math.Abs(float64(point[1]) - float64(prevPoint[1])))
		if distX > distY {
			dist += distX
		} else {
			dist += distY
		}
	}
	return dist
}

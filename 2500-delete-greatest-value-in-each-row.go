// https://leetcode.com/problems/delete-greatest-value-in-each-row/

import (
	"sort"
)

func deleteGreatestValue(grid [][]int) int {
	for _, row := range grid {
		sort.Sort(sort.Reverse(sort.IntSlice(row)))
	}
	sumOfGreatestValue := 0
	for i := 0; i < len(grid[0]); i++ {
		max := 0
		for j := 0; j < len(grid); j++ {
			if grid[j][i] > max {
				max = grid[j][i]
			}
		}
		sumOfGreatestValue += max
	}
	return sumOfGreatestValue
}

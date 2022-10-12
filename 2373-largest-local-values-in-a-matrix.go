// https://leetcode.com/problems/largest-local-values-in-a-matrix/

func largestLocal(grid [][]int) [][]int {
	size := len(grid) - 2
	maxLocal := make([][]int, size)

	for i := 0; i < size; i++ {
		maxLocal[i] = make([]int, size)
		for j := 0; j < size; j++ {
			maxLocal[i][j] = maxVal(grid, i, i+2, j, j+2)
		}
	}
	return maxLocal
}

func maxVal(grid [][]int, si, ei, sj, ej int) int {
	max := 0
	for i := si; i <= ei; i++ {
		for j := sj; j <= ej; j++ {
			if grid[i][j] > max {
				max = grid[i][j]
			}
		}
	}
	return max
}

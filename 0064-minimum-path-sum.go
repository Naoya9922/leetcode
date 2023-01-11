// https://leetcode.com/problems/minimum-path-sum/

func minPathSum(grid [][]int) int {
	for i, row := range grid {
		for j := range row {
			lastVal := 0
			if i >= 1 {
				lastVal = grid[i-1][j]
			}
			if j >= 1 && (lastVal == 0 || lastVal > grid[i][j-1]) {
				lastVal = grid[i][j-1]
			}
			grid[i][j] += lastVal
		}
	}

	lastRow := grid[len(grid)-1]
	return lastRow[len(lastRow)-1]
}


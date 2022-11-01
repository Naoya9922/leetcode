// https://leetcode.com/problems/check-if-matrix-is-x-matrix/

func checkXMatrix(grid [][]int) bool {
	w := len(grid)

	for i, r := range grid {
		for j, v := range r {
			if (i+j) == w-1 || i == j {
				if v == 0 {
					return false
				}
			} else {
				if v != 0 {
					return false
				}
			}
		}
	}

	return true
}

// https://leetcode.com/problems/rotate-image/

func rotate(matrix [][]int) {
	tmp := make([][]int, len(matrix))
	for i, row := range matrix {
		rowLen := len(row)
		newRow := make([]int, rowLen)
		for j := range row {
			newRow[j] = matrix[rowLen-j-1][i]
		}
		tmp[i] = newRow
	}
	copy(matrix, tmp)
}

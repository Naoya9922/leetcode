// https://leetcode.com/problems/longest-common-subsequence/

func longestCommonSubsequence(text1 string, text2 string) int {
	x, y := []rune(text1), []rune(text2)
	table := longestCommonSubsequenceTable(x, y)
	return table[len(x)][len(y)]
}

func max(value1, value2 int) int {
	if value1 >= value2 {
		return value1
	} else {
		return value2
	}
}

func longestCommonSubsequenceTable(x, y []rune) (LCS [][]int) {
	n := len(x)
	m := len(y)

	LCS = make([][]int, n+1)
	for row := 0; row < n+1; row++ {
		LCS[row] = make([]int, m+1)
	}

	for row := 0; row < n; row++ {
		for col := 0; col < m; col++ {
			if x[row] == y[col] {
				LCS[row+1][col+1] = LCS[row][col] + 1
			} else {
				LCS[row+1][col+1] = max(LCS[row][col+1], LCS[row+1][col])
			}
		}
	}
	return LCS
}

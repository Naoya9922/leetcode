// https://leetcode.com/problems/longest-arithmetic-subsequence/

func longestArithSeqLength(nums []int) int {
	result := 2
	n := len(nums)

	indices := make(map[int]int)

	dp := make([][]int, n)
	for i := range dp {
		dp[i] = make([]int, n)
	}
	for i, r := range dp {
		for j := range r {
			dp[i][j] = 2
		}
	}

	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			diff := (2 * nums[i]) - nums[j]
			index, ok := indices[diff]
			if !ok {
				continue
			}
			dp[i][j] = dp[index][i] + 1
			if dp[i][j] > result {
				result = dp[i][j]
			}
		}
		indices[nums[i]] = i
	}

	return result
}

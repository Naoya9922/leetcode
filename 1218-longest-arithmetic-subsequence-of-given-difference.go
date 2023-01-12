// https://leetcode.com/problems/longest-arithmetic-subsequence-of-given-difference/

func longestSubsequence(arr []int, difference int) int {
	result := 1
	dp := make(map[int]int)
	for _, v := range arr {
		dp[v] = dp[v-difference] + 1
		if dp[v] > result {
			result = dp[v]
		}
	}
	return result
}

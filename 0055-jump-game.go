// https://leetcode.com/problems/jump-game/

func canJump(nums []int) bool {
	n := len(nums)
	if n == 1 {
		return true
	}

	dp := make([]bool, n)
	dp[0] = true

	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			if j <= (i + nums[i]) {
				dp[j] = dp[i] && true
			}
		}
	}

	return dp[n-1]
}

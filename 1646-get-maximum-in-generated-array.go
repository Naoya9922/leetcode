// https://leetcode.com/problems/get-maximum-in-generated-array/

func getMaximumGenerated(n int) int {
	if n <= 1 {
		return n
	}
	nums := []int{0, 1}
	max := 0
	for i := 2; i <= n; i++ {
		if i%2 == 0 {
			nums = append(nums, nums[i/2])
		} else {
			idx := i / 2
			nums = append(nums, nums[idx]+nums[idx+1])
		}
		if nums[len(nums)-1] > max {
			max = nums[len(nums)-1]
		}
	}
	return max
}

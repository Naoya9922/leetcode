// https://leetcode.com/problems/find-triangular-sum-of-an-array/

func triangularSum(nums []int) int {
	return traverse(nums)[0]
}

func traverse(nums []int) []int {
	if len(nums) == 1 {
		return nums
	}
	for i := 0; i < len(nums)-1; i++ {
		nums[i] = (nums[i] + nums[i+1]) % 10
	}
	return traverse(nums[:len(nums)-1])
}

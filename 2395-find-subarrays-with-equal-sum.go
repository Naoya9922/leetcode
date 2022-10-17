// https://leetcode.com/problems/find-subarrays-with-equal-sum/

func findSubarrays(nums []int) bool {
	sumMap := make(map[int]int)
	for i := 0; i < len(nums)-1; i++ {
		sum := sumSlice(nums[i : i+2])
		if sumMap[sum] != 0 {
			return true
		}
		sumMap[sum]++
	}
	return false
}

func sumSlice(nums []int) int {
	sum := 0
	for _, n := range nums {
		sum += n
	}
	return sum
}

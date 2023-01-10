// https://leetcode.com/problems/longest-increasing-subsequence/

func lengthOfLIS(nums []int) int {
	l := make([]int, 0)
	l = append(l, nums[0])
	for i := 1; i < len(nums); i++ {
		if l[len(l)-1] < nums[i] {
			l = append(l, nums[i])
		} else {
			idx := binarySearch(l, nums[i])
			l[idx] = nums[i]
		}
	}
	return len(l)
}

func binarySearch(slice []int, target int) int {
	low := 0
	high := len(slice) - 1

	for low <= high {
		median := (low + high) / 2
		if slice[median] < target {
			low = median + 1
		} else {
			high = median - 1
		}
	}
	return low
}

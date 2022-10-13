// https://leetcode.com/problems/make-array-zero-by-subtracting-equal-amounts/

import "sort"

func minimumOperations(nums []int) int {
	var min int
	cnt := 0
	for {
		if isAllZero(nums) {
			break
		}
		min = minVal(nums)
		for i := 0; i < len(nums); i++ {
			if nums[i] > 0 {
				nums[i] -= min
			}
		}
		cnt++
	}
	return cnt
}

func minVal(nums []int) int {
	if len(nums) < 0 {
		panic("nums must be positive length")
	}
	sort.Ints(nums)
	var min int
	for _, n := range nums {
		if n > 0 {
			min = n
			break
		}
	}
	return min
}

func isAllZero(nums []int) bool {
	zeroCnt := 0
	for _, n := range nums {
		if n == 0 {
			zeroCnt++
		}
	}
	if zeroCnt == len(nums) {
		return true
	} else {
		return false
	}
}

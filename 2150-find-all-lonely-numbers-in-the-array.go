// https://leetcode.com/problems/find-all-lonely-numbers-in-the-array

import (
	"sort"
	"math"
)

func findLonely(nums []int) []int {
	sort.Ints(nums)

	lastIdx := len(nums) - 1
	resultAry := make([]int, 0)

	for i, n := range nums {
		if (i != 0 && isAbsWithin(nums[i-1], n, 1)) || (i != lastIdx && isAbsWithin(nums[i+1], n, 1)) {
			continue
		}
		resultAry = append(resultAry, n)
	}

	return resultAry
}

func isAbsWithin(a, b, abs int) bool {
	return int(math.Abs(float64(a)-float64(b))) <= abs
}

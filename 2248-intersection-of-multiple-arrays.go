// https://leetcode.com/problems/intersection-of-multiple-arrays/

import "sort"

func intersection(nums [][]int) []int {

	if len(nums) < 1 {
		panic("nums must have more than 1 length")
	}

	mapNums := make([]map[int]bool, 0)

	for _, ns := range nums {
		mapN := make(map[int]bool)
		for _, n := range ns {
			mapN[n] = true
		}
		mapNums = append(mapNums, mapN)
	}

	intxn := make([]int, 0)

	top := nums[0]
	for _, n := range top {
		cnt := 0
		for _, mapN := range mapNums {
			if mapN[n] {
				cnt++
			}
		}
		if cnt == len(mapNums) {
			intxn = append(intxn, n)
		}
	}

	sort.Ints(intxn)
	return intxn
}

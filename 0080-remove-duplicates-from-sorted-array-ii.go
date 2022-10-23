// https://leetcode.com/problems/remove-duplicates-from-sorted-array-ii/

func removeDuplicates(nums []int) int {

	pos := -1
	nMap := make(map[int]int)

	for i, n := range nums {
		nMap[n]++
		if nMap[n] <= 2 || (i >= 1 && nums[i-1] != nums[i]) {
			pos++
			nums[pos] = n
		}
	}
	return pos + 1
}

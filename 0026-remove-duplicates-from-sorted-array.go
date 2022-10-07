// https://leetcode.com/problems/remove-duplicates-from-sorted-array/

func removeDuplicates(nums []int) int {
	pos := 1
	for i, n := range nums {
		if i >= 1 && nums[i-1] != nums[i] {
			nums[pos] = n
			pos++
		}
	}
	return pos
}

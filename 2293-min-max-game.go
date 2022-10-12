// https://leetcode.com/problems/min-max-game/

func minMaxGame(nums []int) int {

	if len(nums) == 1 {
		return nums[0]
	}

	ary := make([]int, 0)
	isMin := true

	for i := 1; i < len(nums); i += 2 {
		var appendVal int
		if isMin {
			if nums[i-1] > nums[i] {
				appendVal = nums[i]
			} else {
				appendVal = nums[i-1]
			}
		} else {
			if nums[i-1] > nums[i] {
				appendVal = nums[i-1]
			} else {
				appendVal = nums[i]
			}
		}
		isMin = !isMin
		ary = append(ary, appendVal)
	}

	return minMaxGame(ary)
}

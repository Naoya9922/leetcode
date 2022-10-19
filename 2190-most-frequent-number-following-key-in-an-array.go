// https://leetcode.com/problems/most-frequent-number-following-key-in-an-array/

func mostFrequent(nums []int, key int) int {
	fmap := make(map[int]int)

	for i := 0; i < len(nums)-1; i++ {
		if nums[i] == key {
			fmap[nums[i+1]]++
		}
	}

	maxKey := 0
	maxVal := 0

	for k, v := range fmap {
		if v > maxVal {
			maxKey = k
			maxVal = v
		}
	}

	return maxKey
}

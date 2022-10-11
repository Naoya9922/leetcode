// https://leetcode.com/problems/most-frequent-even-element/

func mostFrequentEven(nums []int) int {
	cntMap := make(map[int]int)
	for _, n := range nums {
		if n%2 == 0 {
			cntMap[n]++
		}
	}
	maxKey := -1
	maxVal := -1
	for k, v := range cntMap {
		if v > maxVal || (v == maxVal && k < maxKey) {
			maxKey, maxVal = k, v
		}
	}
	return maxKey
}

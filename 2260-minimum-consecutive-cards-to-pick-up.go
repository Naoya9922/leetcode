// https://leetcode.com/problems/minimum-consecutive-cards-to-pick-up/

func minimumCardPickup(cards []int) int {
	minLength := -1
	cardMap := make(map[int]int)
	for idx, c := range cards {
		if lastIdx, ok := cardMap[c]; ok {
			length := idx - lastIdx + 1
			if minLength == -1 || minLength > length {
				minLength = length
			}
		}
		cardMap[c] = idx
	}
	return minLength
}

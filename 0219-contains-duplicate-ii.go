// https://leetcode.com/problems/contains-duplicate-ii/

func containsNearbyDuplicate(nums []int, k int) bool {
	dupMap := make(map[int][]int)

	for i, n := range nums {
		dupMap[n] = append(dupMap[n], i)
	}

	for _, val := range dupMap {
		for i, originalIndex := range val {
			if i == 0 {
				continue
			}
			if (originalIndex - val[i-1]) <= k {
				return true
			}
		}
	}

	return false
}

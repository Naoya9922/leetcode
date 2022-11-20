// https://leetcode.com/problems/two-furthest-houses-with-different-colors/

func maxDistance(colors []int) int {
	cMap := make(map[int][]int)

	for i, color := range colors {
		if _, ok := cMap[color]; !ok {
			cMap[color] = []int{i, 0}
		}
		for k, v := range cMap {
			if color == k {
				continue
			}
			if i-v[0] > v[1] {
				cMap[k] = []int{v[0], i - v[0]}
			}
		}
	}

	max := 0
	for _, v := range cMap {
		if v[1] > max {
			max = v[1]
		}
	}

	return max
}

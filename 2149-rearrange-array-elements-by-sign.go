// https://leetcode.com/problems/rearrange-array-elements-by-sign/

func rearrangeArray(nums []int) []int {
	pos := make([]int, 0)
	neg := make([]int, 0)
	res := make([]int, 0)

	for _, num := range nums {
		if num > 0 {
			pos = append(pos, num)
		} else {
			neg = append(neg, num)
		}
	}

	i := 0
	pi := 0
	ni := 0
	for {
		if i%2 == 0 {
			if pi >= len(pos) {
				break
			}
			res = append(res, pos[pi])
			pi++
		} else {
			if ni >= len(neg) {
				break
			}
			res = append(res, neg[ni])
			ni++
		}
		i++
	}
	return res
}

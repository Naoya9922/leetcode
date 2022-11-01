// https://leetcode.com/problems/average-value-of-even-numbers-that-are-divisible-by-three/

func averageValue(nums []int) int {
	sum, cnt := 0, 0
	for _, n := range nums {
		if n%2 == 0 && n%3 == 0 {
			sum += n
			cnt++
		}
	}
	if cnt == 0 {
		return 0
	}
	return int(sum / cnt)
}

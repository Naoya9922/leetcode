// https://leetcode.com/problems/number-of-1-bits/

func hammingWeight(num uint32) int {
	s := fmt.Sprintf("%b", num)
	cnt := 0
	for _, b := range s {
		if b == '1' {
			cnt++
		}
	}
	return cnt
}

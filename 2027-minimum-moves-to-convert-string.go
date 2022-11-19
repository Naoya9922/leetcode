// https://leetcode.com/problems/minimum-moves-to-convert-string/

func minimumMoves(s string) int {
	cnt := 0
	for i := 0; i < len(s); i++ {
		if string(s[i]) == "X" {
			cnt++
			i += 2
			continue
		}
	}
	return cnt
}

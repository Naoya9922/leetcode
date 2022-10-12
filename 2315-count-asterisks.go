// https://leetcode.com/problems/count-asterisks/

func countAsterisks(s string) int {
	cnt := 0
	in := false
	for _, r := range s {
		if r == '|' {
			if in == true {
				in = false
			} else {
				in = true
			}
		}
		if in == false && r == '*' {
			cnt++
		}
	}
	return cnt
}

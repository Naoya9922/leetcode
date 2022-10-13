// https://leetcode.com/problems/rearrange-characters-to-make-target-string/

import "strings"

func rearrangeCharacters(s string, target string) int {
	cnt := 0
main:
	for {
		for _, r := range target {
			if strings.Contains(s, string(r)) {
				s = strings.Replace(s, string(r), "", 1)
			} else {
				break main
			}
		}
		cnt++

	}
	return cnt
}

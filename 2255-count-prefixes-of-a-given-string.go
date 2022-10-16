// https://leetcode.com/problems/count-prefixes-of-a-given-string/

import "strings"

func countPrefixes(words []string, s string) int {
	cnt := 0
	for _, word := range words {
		if strings.HasPrefix(s, word) {
			cnt++
		}
	}
	return cnt
}

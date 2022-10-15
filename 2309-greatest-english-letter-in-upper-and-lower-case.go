// https://leetcode.com/problems/greatest-english-letter-in-upper-and-lower-case/

import "strings"

func greatestLetter(s string) string {
	lMap := make(map[string]int)
	rAry := make([]rune, 0)

	for _, r := range s {
		var opposite string
		s := string(r)

		if isLower(s) {
			opposite = strings.ToUpper(s)
		} else {
			opposite = strings.ToLower(s)
		}
		if lMap[opposite] >= 1 {
			lRune := rune(strings.ToUpper(s)[0])
			rAry = append(rAry, lRune)
		}
		lMap[s]++
	}

	if len(rAry) == 0 {
		return ""
	}
	maxRune := rAry[0]
	for _, r := range rAry {
		if r > maxRune {
			maxRune = r
		}
	}

	return string(maxRune)
}

func isLower(s string) bool {
	return strings.ToLower(s) == s
}

// https://leetcode.com/problems/first-letter-to-appear-twice/

func repeatedCharacter(s string) byte {
	sMap := make(map[rune]int)
	for _, r := range s {
		if sMap[r] >= 1 {
			return byte(r)
		} else {
			sMap[r]++
		}
	}
	return s[0]
}

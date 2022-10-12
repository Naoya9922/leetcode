// https://leetcode.com/problems/percentage-of-letter-in-string/

func percentageLetter(s string, letter byte) int {
	aCnt := len(s)
	lCnt := 0
	for _, s := range s {
		if byte(s) == letter {
			lCnt++
		}
	}
	return int(float64(lCnt) / float64(aCnt) * 100)
}

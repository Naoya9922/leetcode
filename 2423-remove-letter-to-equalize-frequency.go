// https://leetcode.com/problems/remove-letter-to-equalize-frequency/

func equalFrequency(word string) bool {
	freqsMap := make(map[rune]int)
	for _, char := range word {
		freqsMap[char]++
	}
	cntMap := make(map[int]int)
	for _, v := range freqsMap {
		cntMap[v]++
	}

	mapLen := len(cntMap)
	switch {
	case mapLen >= 3:
		return false
	case mapLen == 2:
		if cntMap[1] == 1 {
			return true
		}
		for k, v := range cntMap {
			if v == 1 && cntMap[k-1] > 0 {
				return true
			}
		}
		return false
	case mapLen == 1:
		for k, v := range cntMap {
			if k >= 2 && v >= 2 {
				return false
			}
		}
	}

	return true
}

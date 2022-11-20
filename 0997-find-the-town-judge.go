// https://leetcode.com/problems/find-the-town-judge/

func findJudge(n int, trust [][]int) int {
	if len(trust) == 0 && n == 1 {
		return 1
	}

	truster := make(map[int]bool)
	trusted := make(map[int]int)

	for _, t := range trust {
		trusted[t[1]]++
		truster[t[0]] = true
	}

	for k, v := range trusted {
		if v == n-1 {
			if _, ok := truster[k]; !ok {
				return k
			}
		}
	}

	return -1
}

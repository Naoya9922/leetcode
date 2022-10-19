// https://leetcode.com/problems/check-if-number-has-equal-digit-count-and-digit-value/

import "strconv"

func digitCount(num string) bool {
	dMap := make(map[int]int)

	for _, n := range num {
		d, err := strconv.Atoi(string(n))
		if err != nil {
			panic(err)
		}
		dMap[d]++
	}

	for i, n := range num {
		d, err := strconv.Atoi(string(n))
		if err != nil {
			panic(err)
		}
		if dMap[i] != d {
			return false
		}
	}

	return true
}

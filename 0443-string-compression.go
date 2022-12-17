// https://leetcode.com/problems/string-compression/

import (
	"strconv"
)

func compress(chars []byte) int {

	cnt := 1
	res := make([]byte, 0)

	for i, c := range chars {
		if i == len(chars)-1 || (i < len(chars)-1 && chars[i+1] != c) {
			res = append(res, chars[i])
			if cnt >= 2 {
				cntStr := strconv.Itoa(cnt)
				for _, cs := range cntStr {
					res = append(res, byte(cs))
				}
			}
			cnt = 1
		} else {
			cnt++
		}
	}
	copy(chars, res)
	return len(res)
}

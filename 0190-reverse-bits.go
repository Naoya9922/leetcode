// https://leetcode.com/problems/reverse-bits/

import (
	"strings"
	"strconv"
)

func reverseBits(num uint32) uint32 {
	b := fmt.Sprintf("%032b", num)
	r := make([]string, 0)
	for i := len(b) - 1; i >= 0; i-- {
		r = append(r, string(b[i]))
	}
	rb := strings.Join(r, "")
	reversed, err := strconv.ParseInt(rb, 2, 64)
	if err != nil {
		panic(err)
	}

	return uint32(reversed)
}

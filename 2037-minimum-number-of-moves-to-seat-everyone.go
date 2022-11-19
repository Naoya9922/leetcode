// https://leetcode.com/problems/minimum-number-of-moves-to-seat-everyone/

import (
	"sort"
	"math"
)

func minMovesToSeat(seats []int, students []int) int {
	sort.Ints(seats)
	sort.Ints(students)

	moveCnt := 0
	for i, seat := range seats {
		moveCnt += int(math.Abs(float64(seat) - float64(students[i])))
	}

	return moveCnt
}

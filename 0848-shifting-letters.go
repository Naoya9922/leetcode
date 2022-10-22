// https://leetcode.com/problems/shifting-letters/

func shiftingLetters(s string, shifts []int) string {

	totalShifts := make([]int, len(shifts))
	var currentShifts int

	for i := len(shifts) - 1; i >= 0; i-- {
		currentShifts += shifts[i]
		totalShifts[i] = currentShifts % 26
	}

	shiftedBytes := make([]byte, 0)

	for i, r := range s {
		shiftedByte := byte(r) + byte(totalShifts[i])
		if shiftedByte > byte('z') {
			shiftedByte = (shiftedByte % byte('z')) + byte('a') - 1
		}
		shiftedBytes = append(shiftedBytes, shiftedByte)
	}

	return string(shiftedBytes)
}

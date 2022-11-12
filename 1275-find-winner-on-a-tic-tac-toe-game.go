// https://leetcode.com/problems/find-winner-on-a-tic-tac-toe-game/

const ROW_COL_LEN = 3

func tictactoe(moves [][]int) string {
	aMoves := make([][]int, 0)
	bMoves := make([][]int, 0)

	for i, move := range moves {
		if i%2 == 0 {
			aMoves = append(aMoves, move)
		} else {
			bMoves = append(bMoves, move)
		}
	}

	return winner(aMoves, bMoves, moves)
}

func isLined(moves [][]int) bool {
	x := make(map[int]int)
	y := make(map[int]int)
	crossCnt1, crossCnt2 := 0, 0

	for _, move := range moves {
		x[move[0]]++
		y[move[1]]++
		if move[0] == move[1] {
			crossCnt1++
		}
		if move[0]+move[1] == ROW_COL_LEN-1 {
			crossCnt2++
		}
	}

	for _, v := range x {
		if v == ROW_COL_LEN {
			return true
		}
	}
	for _, v := range y {
		if v == ROW_COL_LEN {
			return true
		}
	}

	return crossCnt1 == ROW_COL_LEN || crossCnt2 == ROW_COL_LEN
}

func winner(aMoves, bMoves, moves [][]int) string {
	if isLined(aMoves) {
		return "A"
	}
	if isLined(bMoves) {
		return "B"
	}
	if len(moves) == ROW_COL_LEN*ROW_COL_LEN {
		return "Draw"
	}
	return "Pending"
}

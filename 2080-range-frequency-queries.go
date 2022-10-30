// https://leetcode.com/problems/range-frequency-queries/

type RangeFreqQuery struct {
	Array []int
	Cache map[[3]int]int
}

func Constructor(arr []int) RangeFreqQuery {
	return RangeFreqQuery{arr, make(map[[3]int]int)}
}

func (q *RangeFreqQuery) Query(left int, right int, value int) int {
	if v, ok := q.Cache[[3]int{left, right, value}]; ok {
		return v
	}
	cnt := 0
	for i := left; i <= right; i++ {
		if q.Array[i] == value {
			cnt++
		}
	}
	q.Cache[[3]int{left, right, value}] = cnt
	return cnt
}

/**
 * Your RangeFreqQuery object will be instantiated and called as such:
 * obj := Constructor(arr);
 * param_1 := obj.Query(left,right,value);
 */

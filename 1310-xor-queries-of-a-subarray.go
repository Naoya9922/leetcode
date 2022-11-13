// https://leetcode.com/problems/xor-queries-of-a-subarray/

func xorQueries(arr []int, queries [][]int) []int {
	resultArr := make([]int, 0)
	for _, query := range queries {
		left, right := query[0], query[1]
		xor := arr[left]
		for i := left + 1; i <= right; i++ {
			xor = xor ^ arr[i]
		}
		resultArr = append(resultArr, xor)
	}
	return resultArr
}

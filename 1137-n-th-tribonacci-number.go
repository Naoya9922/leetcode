// https://leetcode.com/problems/n-th-tribonacci-number/

func tribonacci(n int) int {
	slice := []int{0, 1, 1}
	for i := 3; i <= n; i++ {
		slice = append(slice, slice[i-3]+slice[i-2]+slice[i-1])
	}
	return slice[n]
}

// https://leetcode.com/problems/maximum-average-subarray-i/

func findMaxAverage(nums []int, k int) float64 {
	var max int
	initial := true
	for i := 0; i <= len(nums)-k; i++ {
		sum := 0
		ary := nums[i : i+k]
		for j := 0; j < k; j++ {
			sum += ary[j]
		}
		if initial == true {
			max = sum
			initial = false
		} else if sum > max {
			max = sum
		}
	}
	return float64(max) / float64(k)
}

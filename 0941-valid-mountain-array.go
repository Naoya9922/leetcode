// https://leetcode.com/problems/valid-mountain-array/

func validMountainArray(arr []int) bool {
	length := len(arr)
	if length <= 2 {
		return false
	}
	var i, j int = 1, length - 2
	for ; i < length; i++ {
		if !(arr[i] > arr[i-1]) {
			break
		}
	}
	for ; j >= 0; j-- {
		if !(arr[j] > arr[j+1]) {
			break
		}
	}
	diff := (j + 1) - (i - 1)
	if diff == 0 {
		return j+1 != length-1 && j+1 != 0
	} else {
		return false
	}
}

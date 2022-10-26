// https://leetcode.com/problems/removing-stars-from-a-string/

func removeStars(s string) string {
	stack := make([]byte, 0)
	reversed := make([]byte, 0)
	result := make([]byte, 0)

	for i := len(s) - 1; i >= 0; i-- {
		if s[i] == '*' {
			stack = append(stack, s[i])
		} else {
			if len(stack) == 0 {
				reversed = append(reversed, s[i])
			} else {
				stack = stack[:len(stack)-1]
			}
		}
	}

	for i := len(reversed) - 1; i >= 0; i-- {
		result = append(result, reversed[i])
	}

	return string(result)
}

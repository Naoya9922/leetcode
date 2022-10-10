// https://leetcode.com/problems/the-employee-that-worked-on-the-longest-task/submissions/

func hardestWorker(n int, logs [][]int) int {
	record := make(map[int]int)
	logDiffs := make([][]int, len(logs))
	for i, _ := range logs {
		if i == 0 {
			logDiffs[i] = []int{logs[i][0], logs[i][1]}
		} else {
			logDiffs[i] = []int{logs[i][0], logs[i][1] - logs[i-1][1]}
		}
	}
	for _, log := range logDiffs {
		if log[1] > record[log[0]] {
			record[log[0]] = log[1]
		}
	}
	type result struct {
		key, val int
		defined  bool
	}
	r := &result{0, 0, false}
	for k, v := range record {
		if v >= r.val {
			if !r.defined || (v == r.val && r.key > k) || v > r.val {
				r.key = k
				r.defined = true
			}
			r.val = v
		}
	}
	return r.key
}

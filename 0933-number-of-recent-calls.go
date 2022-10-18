// https://leetcode.com/problems/number-of-recent-calls/

type RecentCounter struct {
	Requests []int
}

func Constructor() RecentCounter {
	return RecentCounter{}
}

func (rc *RecentCounter) Ping(t int) int {
	rc.Requests = append(rc.Requests, t)
	min := t - 3000

	i := 0
	for {
		if rc.Requests[i] >= min {
			break
		}
		i++
	}

	rc.Requests = rc.Requests[i:]
	return len(rc.Requests)
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * obj := Constructor();
 * param_1 := obj.Ping(t);
 */

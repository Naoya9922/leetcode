// https://leetcode.com/problems/count-days-spent-together

import "time"

func countDaysTogether(arriveAlice string, leaveAlice string, arriveBob string, leaveBob string) int {
	a1 := formatDate(arriveAlice)
	a2 := formatDate(leaveAlice)
	b1 := formatDate(arriveBob)
	b2 := formatDate(leaveBob)

	var s, e time.Time
	if a1.Before(b1) {
		s = b1
	} else {
		s = a1
	}
	if a2.Before(b2) {
		e = a2
	} else {
		e = b2
	}

	if e.Before(s) {
		return 0
	}

	result := int(e.Sub(s).Hours()/24) + 1
	return result
}

func formatDate(date string) time.Time {
	date = "2022-" + date + "T00:00:00+00:00"
	r, e := time.Parse(time.RFC3339, date)
	if e != nil {
		panic(e)
	}
	return r
}

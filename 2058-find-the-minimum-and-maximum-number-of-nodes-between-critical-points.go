// https://leetcode.com/problems/find-the-minimum-and-maximum-number-of-nodes-between-critical-points/

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func nodesBetweenCriticalPoints(head *ListNode) []int {
	cnt := 1
	prevVal := 0
	localMinMax := make([]int, 0)

	for head != nil {
		if cnt == 1 {
			prevVal = head.Val
			head = head.Next
			cnt++
		}

		if prevVal > head.Val && head.Next != nil && (head.Next.Val > head.Val) {
			localMinMax = append(localMinMax, cnt)
		}
		if prevVal < head.Val && head.Next != nil && (head.Next.Val < head.Val) {
			localMinMax = append(localMinMax, cnt)
		}
		prevVal = head.Val
		head = head.Next
		cnt++
	}

	if len(localMinMax) < 2 {
		return []int{-1, -1}
	}

	min, max := getMinDist(localMinMax), getMaxDist(localMinMax)
	return []int{min, max}
}

func getMaxDist(ary []int) int {
	return ary[len(ary)-1] - ary[0]
}

func getMinDist(ary []int) int {
	min := ary[1] - ary[0]
	for i, _ := range ary {
		if i == 0 {
			continue
		}
		if dist := ary[i] - ary[i-1]; dist < min {
			min = dist
		}
	}
	return min
}

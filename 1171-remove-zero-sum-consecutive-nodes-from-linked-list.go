// https://leetcode.com/problems/remove-zero-sum-consecutive-nodes-from-linked-list/

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func removeZeroSumSublists(head *ListNode) *ListNode {
	stack := make([]int, 0)

	for head != nil {
		val := head.Val
		removeTargets := make([]int, 0)
		stackFlg := true
		for i := len(stack) - 1; i >= 0; i-- {
			last := stack[i]
			calculated := sum(removeTargets) + last + val
			if calculated == 0 {
				stackFlg = false
				stack = stack[:i]
				break
			} else {
				removeTargets = append(removeTargets, last)
			}
		}
		if stackFlg && val != 0 {
			stack = append(stack, val)
		}
		head = head.Next
	}
	return buildLinkedList(stack)
}

func sum(slice []int) int {
	sum := 0
	for _, val := range slice {
		sum += val
	}
	return sum
}

func buildLinkedList(slice []int) *ListNode {
	var currentNode, nextNode *ListNode
	for i := len(slice) - 1; i >= 0; i-- {
		currentNode = &ListNode{slice[i], nextNode}
		nextNode = currentNode
	}
	return currentNode
}

// https://leetcode.com/problems/merge-nodes-in-between-zeros/

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func mergeNodes(head *ListNode) *ListNode {
	mnl := &MergedNodeList{}
	sum := 0

	for head != nil {
		if head.Val == 0 {
			if sum == 0 && mnl.CurrentNode == nil {
				head = head.Next
				continue
			} else if mnl.CurrentNode == nil {
				mnl.CurrentNode = &ListNode{Val: sum}
				mnl.HeadNode = mnl.CurrentNode
			} else {
				mnl.CurrentNode.Next = &ListNode{Val: sum}
				mnl.CurrentNode = mnl.CurrentNode.Next
			}
			sum = 0
		} else {
			sum += head.Val
		}
		head = head.Next
	}

	return mnl.HeadNode
}

type MergedNodeList struct {
	HeadNode, CurrentNode *ListNode
}

// https://leetcode.com/problems/flatten-binary-tree-to-linked-list/

type LinkedList struct {
	List []int
}

func (l *LinkedList) traverse(node *TreeNode) {
	l.List = append(l.List, node.Val)
	if node.Left != nil {
		l.traverse(node.Left)
	}
	if node.Right != nil {
		l.traverse(node.Right)
	}
}

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func flatten(root *TreeNode) {
	if root == nil {
		return
	}
	l := &LinkedList{List: make([]int, 0)}
	l.traverse(root)
	for i := 1; i < len(l.List); i++ {
		node := &TreeNode{Val: l.List[i]}
		root.Left = nil
		root.Right = node
		root = node
	}
}

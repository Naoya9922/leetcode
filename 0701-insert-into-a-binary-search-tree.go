// https://leetcode.com/problems/insert-into-a-binary-search-tree/

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func insertIntoBST(root *TreeNode, val int) *TreeNode {
	if root == nil {
		return &TreeNode{Val: val}
	}

	if val < root.Val {
		if root.Left != nil {
			insertIntoBST(root.Left, val)
		} else {
			root.Left = &TreeNode{Val: val}
		}
	} else if val > root.Val {
		if root.Right != nil {
			insertIntoBST(root.Right, val)
		} else {
			root.Right = &TreeNode{Val: val}
		}
	}

	return root
}

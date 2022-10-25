// https://leetcode.com/problems/trim-a-binary-search-tree/

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func trimBST(root *TreeNode, low int, high int) *TreeNode {
	if root == nil {
		return nil
	}

	if root.Left != nil {
		root.Left = trimBST(root.Left, low, high)
	}
	if root.Right != nil {
		root.Right = trimBST(root.Right, low, high)
	}

	if root.Val < low || root.Val > high {
		switch {
		case root.Left != nil:
			root = root.Left
		case root.Right != nil:
			root = root.Right
		default:
			root = nil
		}
	}

	return root
}

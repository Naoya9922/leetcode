// https://leetcode.com/problems/delete-leaves-with-a-given-value/

func isLeaf(node *TreeNode) bool {
	return node.Left == nil && node.Right == nil
}

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func removeLeafNodes(root *TreeNode, target int) *TreeNode {
	if root.Left != nil {
		root.Left = removeLeafNodes(root.Left, target)
	}
	if root.Right != nil {
		root.Right = removeLeafNodes(root.Right, target)
	}
	if root.Val == target && isLeaf(root) {
		root = nil
	}

	return root
}


// https://leetcode.com/problems/merge-two-binary-trees/

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func mergeTrees(root1 *TreeNode, root2 *TreeNode) *TreeNode {

	if root1 == nil && root2 == nil {
		return nil
	}

	node1 := parseNil(root1)
	node2 := parseNil(root2)

	node := &TreeNode{Val: node1.Val + node2.Val}

	if (root1 != nil && root1.Left != nil) || (root2 != nil && root2.Left != nil) {
		node.Left = mergeTrees(parseNil(root1.Left), parseNil(root2.Left))
	}
	if (root1 != nil && root1.Right != nil) || (root2 != nil && root2.Right != nil) {
		node.Right = mergeTrees(parseNil(root1.Right), parseNil(root2.Right))
	}

	return node
}

func parseNil(node *TreeNode) *TreeNode {
	if node == nil {
		return &TreeNode{Val: 0}
	} else {
		return node
	}
}

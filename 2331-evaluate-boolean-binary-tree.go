// https://leetcode.com/problems/evaluate-boolean-binary-tree/

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func evaluateTree(root *TreeNode) bool {

	if root.Left == nil || root.Right == nil {
		return root.Val == 1
	}

	leftVal := evaluateTree(root.Left)
	rightVal := evaluateTree(root.Right)

	op := root.Val
	var res bool
	if op == 2 {
		res = leftVal || rightVal
	} else if op == 3 {
		res = leftVal && rightVal
	}

	return res
}

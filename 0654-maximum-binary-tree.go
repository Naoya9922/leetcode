// https://leetcode.com/problems/maximum-binary-tree/

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func constructMaximumBinaryTree(nums []int) *TreeNode {
	if len(nums) == 0 {
		return nil
	}

	max, idx := maxIdx(nums)
	node := &TreeNode{Val: max}
	node.Left = constructMaximumBinaryTree(nums[:idx])
	node.Right = constructMaximumBinaryTree(nums[idx+1:])

	return node
}

func maxIdx(nums []int) (max int, idx int) {
	max, idx = 0, 0
	for i, n := range nums {
		if n > max {
			max, idx = n, i
		}
	}
	return max, idx
}

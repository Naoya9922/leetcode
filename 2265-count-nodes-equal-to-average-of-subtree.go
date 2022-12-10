// https://leetcode.com/problems/count-nodes-equal-to-average-of-subtree/

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func averageOfSubtree(root *TreeNode) int {
	c := Counter{numsEqlToAvg: 0}
	c.traverse(root)
	return c.numsEqlToAvg
}

type Counter struct {
	numsEqlToAvg int
}

func (c *Counter) traverse(node *TreeNode) (int, int) {
	leftSum := 0
	leftCnt := 0
	rightSum := 0
	rightCnt := 0

	if node.Left != nil {
		leftSum, leftCnt = c.traverse(node.Left)
	}
	if node.Right != nil {
		rightSum, rightCnt = c.traverse(node.Right)
	}
	sum := node.Val + leftSum + rightSum
	cnt := 1 + leftCnt + rightCnt

	if (sum / cnt) == node.Val {
		c.numsEqlToAvg++
	}

	return sum, cnt
}

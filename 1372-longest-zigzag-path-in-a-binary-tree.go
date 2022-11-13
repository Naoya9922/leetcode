// https://leetcode.com/problems/longest-zigzag-path-in-a-binary-tree/

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func longestZigZag(root *TreeNode) int {

	nodes := []*TreeNodeWithDir{&TreeNodeWithDir{TreeNode: root, Dir: "", ZigZagCnt: 0}}
	maxZigZagCnt := 0

	for {
		newNodes := make([]*TreeNodeWithDir, 0)

		for _, node := range nodes {
			if node.Left != nil {
				tmpZigZagCnt := node.ZigZagCnt

				if node.Dir == "R" || node.Dir == "" {
					tmpZigZagCnt++
				} else {
					tmpZigZagCnt = 1
				}
				newNode := &TreeNodeWithDir{
					TreeNode:  node.Left,
					Dir:       "L",
					ZigZagCnt: tmpZigZagCnt}
				newNodes = append(newNodes, newNode)
			}

			if node.Right != nil {
				tmpZigZagCnt := node.ZigZagCnt

				if node.Dir == "L" || node.Dir == "" {
					tmpZigZagCnt++
				} else {
					tmpZigZagCnt = 1
				}
				newNode := &TreeNodeWithDir{
					TreeNode:  node.Right,
					Dir:       "R",
					ZigZagCnt: tmpZigZagCnt}
				newNodes = append(newNodes, newNode)
			}

			if node.ZigZagCnt > maxZigZagCnt {
				maxZigZagCnt = node.ZigZagCnt
			}
		}
		if len(newNodes) == 0 {
			break
		}
		nodes = newNodes
	}
	return maxZigZagCnt
}

type TreeNodeWithDir struct {
	*TreeNode
	Dir       string
	ZigZagCnt int
}

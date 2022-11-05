// https://leetcode.com/problems/add-one-row-to-tree/

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func addOneRow(root *TreeNode, val int, depth int) *TreeNode {
	if depth == 1 {
		root = &TreeNode{Val: val, Left: root}
	}
	nodes := []*TreeNode{root}
	level := 1
	for {
		newNodes := make([]*TreeNode, 0)
		for _, node := range nodes {
			if (level + 1) == depth {
				tmpLeft, tmpRight := node.Left, node.Right
				node.Left = &TreeNode{Val: val, Left: tmpLeft}
				node.Right = &TreeNode{Val: val, Right: tmpRight}
			}
			if node.Left != nil {
				newNodes = append(newNodes, node.Left)
			}
			if node.Right != nil {
				newNodes = append(newNodes, node.Right)
			}
		}
		if len(newNodes) == 0 {
			break
		}
		nodes = newNodes
		level++
	}
	return root
}

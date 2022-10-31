// https://leetcode.com/problems/balance-a-binary-search-tree/

import "sort"

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func balanceBST(root *TreeNode) *TreeNode {
	ary := nodeToArray(root)
	sort.Ints(ary)
	node := build(ary)
	return node
}

func nodeToArray(node *TreeNode) []int {
	ary := []int{node.Val}
	nodes := []*TreeNode{node}
	for {
		newNodes := make([]*TreeNode, 0)
		for _, node := range nodes {
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
		for _, node := range newNodes {
			ary = append(ary, node.Val)
		}
		nodes = newNodes
	}
	return ary
}

func getMedian(ary []int) int {
	return len(ary) / 2
}

func build(ary []int) *TreeNode {
	if len(ary) == 0 {
		return nil
	}
	idx := getMedian(ary)
	node := &TreeNode{Val: ary[idx]}
	node.Left = build(ary[:idx])
	node.Right = build(ary[idx+1:])
	return node
}

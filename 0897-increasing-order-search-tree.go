// https://leetcode.com/problems/increasing-order-search-tree/

type NodeList struct {
	StartNode, CurrentNode *TreeNode
}

func (nodeList *NodeList) appendToList(node *TreeNode) {
	if nodeList.CurrentNode == nil {
		nodeList.StartNode = node
		nodeList.CurrentNode = node
	} else {
		nodeList.CurrentNode.Right = node
		nodeList.CurrentNode = node
	}
}

func (nodeList *NodeList) traverse(node *TreeNode) *NodeList {
	if node.Left != nil {
		nodeList.traverse(node.Left)
	}
	nodeList.appendToList(&TreeNode{Val: node.Val})
	if node.Right != nil {
		nodeList.traverse(node.Right)
	}
	return nodeList
}

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func increasingBST(root *TreeNode) *TreeNode {
	nodeList := &NodeList{}
	r := nodeList.traverse(root)
	return r.StartNode
}

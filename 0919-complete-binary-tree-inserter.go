// https://leetcode.com/problems/complete-binary-tree-inserter/

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
type CBTInserter struct {
	RootNode *TreeNode
}

func Constructor(root *TreeNode) CBTInserter {
	return CBTInserter{RootNode: root}
}

func (inserter *CBTInserter) Insert(val int) int {
	targetNode := getTargetNode(inserter.RootNode, val)
	if targetNode.Left == nil {
		targetNode.Left = &TreeNode{Val: val}
	} else {
		targetNode.Right = &TreeNode{Val: val}
	}
	return targetNode.Val
}

func (inserter *CBTInserter) Get_root() *TreeNode {
	return inserter.RootNode
}

func getTargetNode(node *TreeNode, val int) *TreeNode {
	nodes := []*TreeNode{node}
	for {
		newNodes := make([]*TreeNode, 0)
		for _, node := range nodes {
			if node.Left == nil || node.Right == nil {
				return node
			}
			newNodes = append(newNodes, node.Left, node.Right)
		}
		nodes = newNodes
	}
	return node
}

/**
 * Your CBTInserter object will be instantiated and called as such:
 * obj := Constructor(root);
 * param_1 := obj.Insert(val);
 * param_2 := obj.Get_root();
 */

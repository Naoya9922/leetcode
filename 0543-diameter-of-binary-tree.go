// https://leetcode.com/problems/diameter-of-binary-tree/

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func diameterOfBinaryTree(root *TreeNode) int {
	d := &Diameter{Diameters: make([]int, 0)}
	max := 0
	d.traverseTree(root)
	for _, m := range d.Diameters {
		if m > max {
			max = m
		}
	}
	return max
}

type Diameter struct {
	Diameters []int
}

func (d *Diameter) add(n int) {
	d.Diameters = append(d.Diameters, n)
}

func (d *Diameter) traverseTree(node *TreeNode) int {
	ld := 0
	rd := 0
	if node.Left != nil {
		ld = d.traverseTree(node.Left) + 1
	}
	if node.Right != nil {
		rd = d.traverseTree(node.Right) + 1
	}

	d.add(ld + rd)

	if ld > rd {
		return ld
	} else {
		return rd
	}
}

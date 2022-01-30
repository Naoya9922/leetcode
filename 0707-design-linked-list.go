// https://leetcode.com/problems/design-linked-list/

type MyLinkedList struct {
	Node []int
}

func Constructor() MyLinkedList {
	return MyLinkedList{nil}
}

func (this *MyLinkedList) Get(index int) int {
	if index >= len(this.Node) {
		return -1
	}
	return this.Node[index]
}

func (this *MyLinkedList) AddAtHead(val int) {
	this.Node = append([]int{val}, this.Node...)
}

func (this *MyLinkedList) AddAtTail(val int) {
	this.Node = append(this.Node, val)
}

func (this *MyLinkedList) AddAtIndex(index int, val int) {
	if index > len(this.Node) {
		return
	}
	ary := append(this.Node, 0)
	copy(ary[index+1:], ary[index:])
	ary[index] = val
	this.Node = ary
}

func (this *MyLinkedList) DeleteAtIndex(index int) {
	if index >= len(this.Node) {
		return
	}
	this.Node = append(this.Node[:index], this.Node[index+1:]...)
}

/**
 * Your MyLinkedList object will be instantiated and called as such:
 * obj := Constructor();
 * param_1 := obj.Get(index);
 * obj.AddAtHead(val);
 * obj.AddAtTail(val);
 * obj.AddAtIndex(index,val);
 * obj.DeleteAtIndex(index);
 */


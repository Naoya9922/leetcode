// https://leetcode.com/problems/design-a-stack-with-increment-operation/

type CustomStack struct {
	Stack   []int
	MaxSize int
}

func Constructor(maxSize int) CustomStack {
	return CustomStack{nil, maxSize}
}

func (this *CustomStack) Push(x int) {
	if len(this.Stack) < this.MaxSize {
		this.Stack = append(this.Stack, x)
	}
}

func (this *CustomStack) Pop() int {
	if len(this.Stack) >= 1 {
		last := this.Stack[len(this.Stack)-1]
		this.Stack = this.Stack[:len(this.Stack)-1]
		return last
	}
	return -1
}

func (this *CustomStack) Increment(k int, val int) {
	var max int
	if length := len(this.Stack); k > length {
		max = length
	} else {
		max = k
	}
	for i := 0; i < max; i++ {
		this.Stack[i] += val
	}
}

/**
 * Your CustomStack object will be instantiated and called as such:
 * obj := Constructor(maxSize);
 * obj.Push(x);
 * param_2 := obj.Pop();
 * obj.Increment(k,val);
 */

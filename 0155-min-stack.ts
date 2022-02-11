// https://leetcode.com/problems/min-stack/

class MinStack {
  constructor(private stack: number[]) {
    this.stack = [];
  }

  push(val: number): void {
    this.stack.push(val);
  }

  pop(): void {
    this.stack.pop();
  }

  top(): number {
    return this.stack.slice(-1)[0];
  }

  getMin(): number {
    return this.stack.reduce((acc, e) => Math.min(acc, e));
  }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * var obj = new MinStack()
 * obj.push(val)
 * obj.pop()
 * var param_3 = obj.top()
 * var param_4 = obj.getMin()
 */

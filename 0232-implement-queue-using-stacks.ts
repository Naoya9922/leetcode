// https://leetcode.com/problems/implement-queue-using-stacks/

class MyQueue {
  constructor(private array: number[]) {
    this.array = [];
  }

  push(x: number): void {
    this.array.push(x);
  }

  pop(): number {
    return this.array.shift();
  }

  peek(): number {
    return this.array[0];
  }

  empty(): boolean {
    return this.array.length <= 0;
  }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * var obj = new MyQueue()
 * obj.push(x)
 * var param_2 = obj.pop()
 * var param_3 = obj.peek()
 * var param_4 = obj.empty()
 */

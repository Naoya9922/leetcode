// https://leetcode.com/problems/kth-largest-element-in-a-stream/

class KthLargest {
  constructor(private k: number, private nums: number[]) {
    this.nums = nums.sort((n1, n2) => n2 - n1);
  }

  add(val: number): number {
    let index = this.nums.findIndex((n) => val > n);
    if (index == -1) {
      index = this.nums.length;
    }
    this.nums.splice(index, 0, val);
    return this.nums[this.k - 1];
  }
}

/**
 * Your KthLargest object will be instantiated and called as such:
 * var obj = new KthLargest(k, nums)
 * var param_1 = obj.add(val)
 */

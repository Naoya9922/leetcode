// https://leetcode.com/problems/map-sum-pairs/

class MapSum {
  private wordMap: { [name: string]: number };

  constructor(private ary: [string, number][]) {
    this.wordMap = {};
  }

  insert(key: string, val: number): void {
    this.wordMap[key] = val;
  }

  sum(prefix: string): number {
    let sum = 0;
    for (let key in this.wordMap) {
      if (key.startsWith(prefix)) {
        sum += this.wordMap[key];
      }
    }
    return sum;
  }
}

/**
 * Your MapSum object will be instantiated and called as such:
 * var obj = new MapSum()
 * obj.insert(key,val)
 * var param_2 = obj.sum(prefix)
 */

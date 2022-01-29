// https://leetcode.com/problems/subrectangle-queries/

class SubrectangleQueries {
  constructor(private rectangle: number[][]) {}

  updateSubrectangle(
    row1: number,
    col1: number,
    row2: number,
    col2: number,
    newValue: number
  ): void {
    for (let i = 0; i < this.rectangle.length; i++) {
      for (let j = 0; j < this.rectangle[i].length; j++) {
        if (i >= row1 && i <= row2 && j >= col1 && j <= col2) {
          this.rectangle[i][j] = newValue;
        }
      }
    }
  }

  getValue(row: number, col: number): number {
    return this.rectangle[row][col];
  }
}

/**
 * Your SubrectangleQueries object will be instantiated and called as such:
 * var obj = new SubrectangleQueries(rectangle)
 * obj.updateSubrectangle(row1,col1,row2,col2,newValue)
 * var param_2 = obj.getValue(row,col)
 */

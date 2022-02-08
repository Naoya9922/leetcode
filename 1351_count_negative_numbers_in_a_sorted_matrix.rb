# https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/

# @param {Integer[][]} grid
# @return {Integer}
def count_negatives(grid)
  grid.map do |ary|
    ary.select(&:negative?).count
  end.sum
end

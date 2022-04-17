# https://leetcode.com/problems/range-addition-ii/

# @param {Integer} m
# @param {Integer} n
# @param {Integer[][]} ops
# @return {Integer}
def max_count(m, n, ops)
  x = ops.map(&:first).min
  y = ops.map(&:last).min
  x && y ? x * y : m * n
end

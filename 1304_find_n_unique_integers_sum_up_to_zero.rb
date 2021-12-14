# https://leetcode.com/problems/find-n-unique-integers-sum-up-to-zero/

# @param {Integer} n
# @return {Integer[]}
def sum_zero(n)
  return [0] if n == 1
  limit = n / 2
  center = n.odd? ? 0 : -1
  ((-1 * limit)..center).to_a + (1..limit).to_a
end
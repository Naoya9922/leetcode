# https://leetcode.com/problems/counting-bits/

# @param {Integer} n
# @return {Integer[]}
def count_bits(n)
  (0..n).map{|i| i.to_s(2).chars.map(&:to_i).sum}
end
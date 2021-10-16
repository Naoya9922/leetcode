# https://leetcode.com/problems/complement-of-base-10-integer/

# @param {Integer} n
# @return {Integer}
def bitwise_complement(n)
  n.to_s(2).chars.map{|i| (i.to_i-1).abs}.join.to_i(2)
end
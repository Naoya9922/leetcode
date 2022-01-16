# https://leetcode.com/problems/lexicographical-numbers/

# @param {Integer} n
# @return {Integer[]}
def lexical_order(n)
  ("1"..n.to_s).sort.map(&:to_i)
end
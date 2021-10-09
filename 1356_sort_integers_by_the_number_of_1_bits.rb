# https://leetcode.com/problems/sort-integers-by-the-number-of-1-bits/

# @param {Integer[]} arr
# @return {Integer[]}
def sort_by_bits(arr)
  arr.map{|n| [n, n.to_s(2).chars.map(&:to_i).sum]}.sort_by{|n, bit| [bit, n]}.map{|k,_| k}
end
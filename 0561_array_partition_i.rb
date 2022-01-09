# https://leetcode.com/problems/array-partition-i/

# @param {Integer[]} nums
# @return {Integer}
def array_pair_sum(nums)
  nums.sort.each_slice(2).map{|n1, n2| [n1, n2].min}.sum
end
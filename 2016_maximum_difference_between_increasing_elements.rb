# https://leetcode.com/problems/maximum-difference-between-increasing-elements/

# @param {Integer[]} nums
# @return {Integer}
def maximum_difference(nums)
  max = nums.combination(2).map{|a, b| b - a}.max
  max <= 0 ? -1 : max
end
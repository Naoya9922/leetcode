# https://leetcode.com/problems/count-number-of-pairs-with-absolute-difference-k/

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_k_difference(nums, k)
  nums.combination(2).select{|a, b| (a - b).abs == k}.count
end
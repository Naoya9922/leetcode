# https://leetcode.com/problems/find-subsequence-of-length-k-with-the-largest-sum/

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def max_subsequence(nums, k)
  nums = nums.each_with_index.to_a.sort_by{|n, _| n}
  nums = nums.last(k)
  nums.sort_by{|_, i| i}.map(&:first)
end
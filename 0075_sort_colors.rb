# https://leetcode.com/problems/sort-colors/

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(nums)
  reds = nums.select{|n| n == 0}
  blues = nums.select{|n| n == 2}
  whites = nums.delete_if{|n| n != 1}
  whites.unshift(*reds)
  whites.push(*blues)
end

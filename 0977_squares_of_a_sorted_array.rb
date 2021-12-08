# https://leetcode.com/problems/squares-of-a-sorted-array/

# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
  nums.map(&:abs).sort.map{|n| n ** 2}
end
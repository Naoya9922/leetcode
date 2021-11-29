# https://leetcode.com/problems/shuffle-the-array/

# @param {Integer[]} nums
# @param {Integer} n
# @return {Integer[]}
def shuffle(nums, n)
  first = nums.first(n)
  last = nums.last(n)
  first.zip(last).flatten
end
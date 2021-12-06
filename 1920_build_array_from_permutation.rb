# https://leetcode.com/problems/build-array-from-permutation/

# @param {Integer[]} nums
# @return {Integer[]}
def build_array(nums)
  result = []
  nums.each{|n| result << nums[n]}
  result
end
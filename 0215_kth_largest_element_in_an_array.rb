# https://leetcode.com/problems/kth-largest-element-in-an-array/

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def find_kth_largest(nums, k)
  nums.sort.last(k).first
end
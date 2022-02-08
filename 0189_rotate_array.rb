# https://leetcode.com/problems/rotate-array/

# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
  k = k % nums.length
  k.times do
    nums.unshift(nums.pop)
  end
end

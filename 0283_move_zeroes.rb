# https://leetcode.com/problems/move-zeroes/

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  nums.each do |n|
    if n == 0
      i = nums.index(0)
      nums.delete_at(i)
      nums << 0
    end
  end
end
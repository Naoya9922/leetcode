# https://leetcode.com/problems/monotonic-array/

# @param {Integer[]} nums
# @return {Boolean}
def is_monotonic(nums)
  dir = nil
  nums.each_with_index do |n, idx|
    next if idx == 0
    next if nums[idx - 1] == n
    if dir
      return false if nums[idx-1] > n && dir == 1
      return false if nums[idx-1] < n && dir == -1
    else
      dir = (nums[idx-1] > n ? -1 : 1)
    end
  end
  true
end
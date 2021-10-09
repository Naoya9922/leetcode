# https://leetcode.com/problems/minimum-operations-to-make-the-array-increasing/

# @param {Integer[]} nums
# @return {Integer}
def min_operations(nums)
  sum = 0
  idx = 0
  while(true) do
    break if !nums[idx]
    if idx == 0
      idx += 1
      next
    end
    if nums[idx - 1] >= nums[idx]
      to_add = nums[idx - 1] - nums[idx] + 1
      nums[idx] = nums[idx] + to_add
      sum += to_add
    end
    idx += 1
  end
  sum
end
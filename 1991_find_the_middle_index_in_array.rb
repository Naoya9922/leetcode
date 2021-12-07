# https://leetcode.com/problems/find-the-middle-index-in-array/

# @param {Integer[]} nums
# @return {Integer}
def find_middle_index(nums)
  nums.each_with_index do |n, idx|
    left = idx == 0 ? [0] : nums[..idx-1]
    right = idx == nums.length - 1 ? [0] : nums[idx+1..]
    return idx if left.sum == right.sum
  end
  -1
end
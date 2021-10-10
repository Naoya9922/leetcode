# https://leetcode.com/problems/longest-continuous-increasing-subsequence/

# @param {Integer[]} nums
# @return {Integer}
def find_length_of_lcis(nums)
  nums = nums.map.with_index do |n,idx|
    next if idx == 0
    n > nums[idx - 1] ? 1 : 0
  end.compact
  nums.join.scan(/1+/).max_by(&:length)&.length.to_i + 1
end
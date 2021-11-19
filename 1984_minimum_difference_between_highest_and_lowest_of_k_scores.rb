# https://leetcode.com/problems/minimum-difference-between-highest-and-lowest-of-k-scores/

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def minimum_difference(nums, k)
  nums = nums.sort
  min = nil
  nums.each_with_index do |_, idx|
    ary = nums[idx...(idx+k)]
    next if ary.count != k
    diff = ary.last - ary.first
    if min.nil? || min > (diff)
      min = diff
    end
  end
  min
end
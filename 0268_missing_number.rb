# https://leetcode.com/problems/missing-number/

# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  max = nums.count
  ((0..max).to_a - nums).first
end
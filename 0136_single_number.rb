# https://leetcode.com/problems/single-number/

# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  nums.group_by(&:itself).transform_values(&:count).select{|k, v| v == 1}.keys.first
end

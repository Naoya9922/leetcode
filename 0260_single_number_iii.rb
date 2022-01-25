# https://leetcode.com/problems/single-number-iii/

# @param {Integer[]} nums
# @return {Integer[]}
def single_number(nums)
  nums.group_by(&:itself).transform_values(&:count).select{|_, v| v == 1}.keys.first(2)
end
# https://leetcode.com/problems/find-the-duplicate-number/

# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
  nums.group_by(&:itself).transform_values(&:count).to_h.select{|_, v| v >= 2}.first.first
end
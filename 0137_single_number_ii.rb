# https://leetcode.com/problems/single-number-ii/

# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  nums.group_by(&:itself).transform_values(&:count).invert[1]
end
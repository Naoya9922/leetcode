# https://leetcode.com/problems/sort-array-by-increasing-frequency/

# @param {Integer[]} nums
# @return {Integer[]}
def frequency_sort(nums)
  hash = nums.group_by(&:itself).transform_values(&:count).to_h
  nums.sort_by{|n| [hash[n], -n]}
end
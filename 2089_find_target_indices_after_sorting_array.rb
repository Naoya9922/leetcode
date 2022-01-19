# https://leetcode.com/problems/find-target-indices-after-sorting-array/

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def target_indices(nums, target)
  nums.sort.each_with_index.to_a.select{|n, _| n == target}.map(&:last)
end
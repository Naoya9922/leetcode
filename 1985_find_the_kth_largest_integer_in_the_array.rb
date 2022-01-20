# https://leetcode.com/problems/find-the-kth-largest-integer-in-the-array/

# @param {String[]} nums
# @param {Integer} k
# @return {String}
def kth_largest_number(nums, k)
  nums.map(&:to_i).sort[-k].to_s
end
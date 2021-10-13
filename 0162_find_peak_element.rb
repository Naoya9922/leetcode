# https://leetcode.com/problems/find-peak-element/

# @param {Integer[]} nums
# @return {Integer}
def find_peak_element(nums)
  nums.index(nums.max)
end
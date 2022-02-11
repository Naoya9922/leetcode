# https://leetcode.com/problems/count-elements-with-strictly-smaller-and-greater-elements/

# @param {Integer[]} nums
# @return {Integer}
def count_elements(nums)
  nums_h = nums.uniq.sort.each_with_index.to_h
  max = nums_h.values.max
  nums.select{|n| ![0, max].include?(nums_h[n])}.count
end

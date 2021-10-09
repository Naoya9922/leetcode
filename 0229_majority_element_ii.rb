# https://leetcode.com/problems/majority-element-ii/

# @param {Integer[]} nums
# @return {Integer[]}
def majority_element(nums)
  norm = nums.length / 3
  nums.group_by(&:itself).map{|k,v| [k, v.count]}.to_h.select{|k,v| v > norm}.keys
end
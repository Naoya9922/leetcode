# https://leetcode.com/problems/sum-of-unique-elements/

# @param {Integer[]} nums
# @return {Integer}
def sum_of_unique(nums)
  dups = nums.select{|num| nums.count(num) > 1}
  (nums - dups).sum
end
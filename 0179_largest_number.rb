# https://leetcode.com/problems/largest-number/

# @param {Integer[]} nums
# @return {String}
def largest_number(nums)
  nums.map(&:to_s).sort{|a, b| b+a <=> a+b}.join.to_i.to_s
end

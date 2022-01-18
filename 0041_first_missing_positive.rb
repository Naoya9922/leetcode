# https://leetcode.com/problems/first-missing-positive/

# @param {Integer[]} nums
# @return {Integer}
def first_missing_positive(nums)
  nums = nums.uniq.reject{|n| n <= 0}.sort
  result = nil
  nums.each_with_index do |n, i|
    i = i + 1
    if n != i
      result = i
      break
    end
  end
  result.nil? ? (nums.last || 0) + 1 : result
end
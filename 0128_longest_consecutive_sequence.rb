# https://leetcode.com/problems/longest-consecutive-sequence/

# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)
  ary = nums.uniq.sort
  count = 1
  sum = 0
  ary.each_with_index do |n, i|
    if ary[i+1] == n+1
      count += 1
    else
      sum = [sum, count].max
      count = 1
    end
  end
  sum
end
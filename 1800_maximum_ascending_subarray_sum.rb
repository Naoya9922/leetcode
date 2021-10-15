# https://leetcode.com/problems/maximum-ascending-subarray-sum/

# @param {Integer[]} nums
# @return {Integer}
def max_ascending_sum(nums)
  max = 0
  tmp = 0
  nums.each_with_index do |n, i|
    if i == 0
      tmp += n
      max = tmp
      next
    end
    if nums[i-1] < n
      tmp += nums[i-1] if tmp == 0
      tmp += n
    else
      tmp = 0
    end
    max = tmp if tmp > max
  end
  max
end
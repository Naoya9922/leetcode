# https://leetcode.com/problems/maximum-swap/

# @param {Integer} num
# @return {Integer}
def maximum_swap(num)
  nums = num.to_s.chars.map(&:to_i)
  nums.each_with_index do |n, i|
    next if (max = nums[i..].max) == n
    idx = nums[i..].rindex(max) + i
    nums[i], nums[idx] = nums[idx], nums[i]
    break
  end
  nums.join.to_i
end

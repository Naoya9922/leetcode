# https://leetcode.com/problems/minimum-sum-of-four-digit-number-after-splitting-digits/

# @param {Integer} num
# @return {Integer}
def minimum_sum(num)
  nums = num.to_s.chars.sort
  f = []
  l = []
  nums.each_with_index do |n, i|
    i.even? ? f << n : l << n
  end
  f.join.to_i + l.join.to_i
end

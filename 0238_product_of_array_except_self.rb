# https://leetcode.com/problems/product-of-array-except-self/

# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  total = nums.inject(&:*)
  total_without_zero = nums.count(&:zero?) >= 2 ? 0 : nums.reject(&:zero?).inject(&:*).to_i
  nums.map do |n|
    next total_without_zero if n == 0
    total / n
  end
end

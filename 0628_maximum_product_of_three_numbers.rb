# https://leetcode.com/problems/maximum-product-of-three-numbers/

# @param {Integer[]} nums
# @return {Integer}
def maximum_product(nums)
  target_num = 3
  pos = nums.sort.select{|n| n >= 0}.last(target_num)
  neg = nums.sort.select{|n| n < 0}
  neg = pos.empty? ? neg.last(target_num) : neg.first(target_num)
  (pos + neg).combination(target_num).map{|ary| ary.inject(&:*)}.max
end

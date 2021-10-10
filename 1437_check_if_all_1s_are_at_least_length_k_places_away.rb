# https://leetcode.com/problems/check-if-all-1s-are-at-least-length-k-places-away/

# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def k_length_apart(nums, k)
  nums = nums.map.with_index.to_a.select{|k,_| k == 1}
  nums.each_with_index.all? do |(_,v),i|
    next true if i == 0
    (v - nums[i-1][1]) - 1 >= k
  end
end
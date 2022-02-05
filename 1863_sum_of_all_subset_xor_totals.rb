# https://leetcode.com/problems/sum-of-all-subset-xor-totals/

# @param {Integer[]} nums
# @return {Integer}
def subset_xor_sum(nums)
  (1..nums.length).map do |i|
    nums.combination(i).map {|ary| ary.inject {|acc, n| acc ^ n}}.sum
  end.sum
end

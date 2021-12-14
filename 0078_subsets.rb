# https://leetcode.com/problems/subsets/

# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
  (0..nums.length).inject([]) do |acc, n|
    acc += nums.combination(n).to_a
  end
end
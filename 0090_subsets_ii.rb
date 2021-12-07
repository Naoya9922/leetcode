# https://leetcode.com/problems/subsets-ii/

# @param {Integer[]} nums
# @return {Integer[][]}
def subsets_with_dup(nums)
  nums = nums.sort
  result = []
  result << []
  max = nums.length - 1
  nums.each.with_index do |_, idx|
    (idx..max).each do |n|
      ary = nums[idx..n]
      (1..ary.length).each do |j|
        ary.combination(j).each do |a|
          result << a unless result.include?(a)
        end
      end
    end
  end
  result
end
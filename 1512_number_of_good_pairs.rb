# https://leetcode.com/problems/number-of-good-pairs/

# @param {Integer[]} nums
# @return {Integer}
def num_identical_pairs(nums)
  result = 0
  length = nums.length
  indices = (0..length - 1).to_a.combination(2).to_a
  indices.each do |a, b|
    if nums[a] == nums[b]
      result+= 1
    end
  end
  result
end
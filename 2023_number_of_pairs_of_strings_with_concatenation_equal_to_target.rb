# https://leetcode.com/problems/number-of-pairs-of-strings-with-concatenation-equal-to-target/

# @param {String[]} nums
# @param {String} target
# @return {Integer}
def num_of_pairs(nums, target)
  nums.permutation(2).to_a.select{|i,j| (i+j) == target}.count
end
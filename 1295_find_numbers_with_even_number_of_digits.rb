# https://leetcode.com/problems/find-numbers-with-even-number-of-digits/

# @param {Integer[]} nums
# @return {Integer}
def find_numbers(nums)
  nums.map(&:to_s).map(&:length).select(&:even?).count
end
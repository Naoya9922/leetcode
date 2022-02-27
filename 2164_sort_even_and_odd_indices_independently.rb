# https://leetcode.com/problems/sort-even-and-odd-indices-independently/

# @param {Integer[]} nums
# @return {Integer[]}
def sort_even_odd(nums)
  nums_with_index = nums.each_with_index.to_a
  odds = nums_with_index.select{|_, i| i.odd?}.map(&:first).sort.reverse
  evens = nums_with_index.select{|_, i| i.even?}.map(&:first).sort
  evens.zip(odds).flatten.compact
end

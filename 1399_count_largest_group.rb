# https://leetcode.com/problems/count-largest-group/

# @param {Integer} n
# @return {Integer}
def count_largest_group(n)
  arr = (1..n).to_a.group_by{|e| e.to_s.chars.map(&:to_i).sum}.values.map(&:count)
  max = arr.max
  arr.select{|e| e == max}.count
end
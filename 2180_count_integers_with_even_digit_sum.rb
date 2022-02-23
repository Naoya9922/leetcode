# https://leetcode.com/problems/count-integers-with-even-digit-sum/

# @param {Integer} num
# @return {Integer}
def count_even(num)
  (2..num).select{|n| n.to_s.chars.map(&:to_i).sum.even?}.count
end

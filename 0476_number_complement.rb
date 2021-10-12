# https://leetcode.com/problems/number-complement/

# @param {Integer} num
# @return {Integer}
def find_complement(num)
  num.to_s(2).chars.map{|i| (i.to_i-1).abs.to_s}.join.to_i(2)
end
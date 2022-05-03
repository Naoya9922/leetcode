# https://leetcode.com/problems/minimum-bit-flips-to-convert-number/

# @param {Integer} start
# @param {Integer} goal
# @return {Integer}
def min_bit_flips(start, goal)
  min, max = [start, goal].minmax
  max = max.to_s(2)
  min = min.to_s(2).rjust(max.length, '0')
  min.chars.zip(max.chars).count{|a, b| a != b}
end

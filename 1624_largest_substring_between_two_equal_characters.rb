# https://leetcode.com/problems/largest-substring-between-two-equal-characters/

# @param {String} s
# @return {Integer}
def max_length_between_equal_characters(s)
  ary = s.chars.each_with_index.to_a
  ary = ary.to_a.group_by{|c, _| c}.values.select{|ary| ary.length >= 2}.max_by{|ary| ary.last.last - ary.first.last}
  return -1 unless ary
  ary = ary.map(&:last)
  ary.last - ary.first - 1
end
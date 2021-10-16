# https://leetcode.com/problems/first-unique-character-in-a-string/

# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  ary = s.chars
  c = ary.group_by(&:itself).find{|k,v| v.count == 1}&.first
  ary.index(c) || -1
end
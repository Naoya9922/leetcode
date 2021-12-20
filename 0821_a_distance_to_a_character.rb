# https://leetcode.com/problems/a-distance-to-a-character/

# @param {String} s
# @param {Character} c
# @return {Integer[]}
def shortest_to_char(s, c)
  ary = s.chars
  ary.map.with_index do |char, idx|
    left = ary[0..idx]
    right = ary[idx..ary.length-1]
    [left.reverse.index(c) || Float::INFINITY, right.index(c) || Float::INFINITY].min
  end
end
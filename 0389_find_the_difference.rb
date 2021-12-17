# https://leetcode.com/problems/find-the-difference/

# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
  s = s.rjust(t.length, ' ')
  s.chars.sort.zip(t.chars.sort).select{|x, y| x != y && !y.nil?}.flatten.last
end
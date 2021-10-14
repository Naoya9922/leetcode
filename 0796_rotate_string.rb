# https://leetcode.com/problems/rotate-string/

# @param {String} s
# @param {String} goal
# @return {Boolean}
def rotate_string(s, goal)
  str = s.chars.dup
  (0..).each do
    first = str.shift
    result = (str << first).join
    return true if result == goal
    return false if result == s
  end
end
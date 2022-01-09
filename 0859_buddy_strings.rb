# https://leetcode.com/problems/buddy-strings/

# @param {String} s
# @param {String} goal
# @return {Boolean}
def buddy_strings(s, goal)
  return false if s.length <= 1 || s.length != goal.length
  s = s.chars
  g = goal.chars
  diff = s.zip(g).select{|a,b| a!=b}
  case diff.count
  when 0
    return true if s.uniq.length != s.length
  when 2
    return true if diff[0].reverse == diff[1]
  end
  false
end
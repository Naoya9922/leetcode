# https://leetcode.com/problems/consecutive-characters/

# @param {String} s
# @return {Integer}
def max_power(s)
  s.scan(/(\w)(\1+)/).map(&:join).map(&:length).max || 1
end
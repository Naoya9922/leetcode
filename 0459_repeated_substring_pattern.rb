# https://leetcode.com/problems/repeated-substring-pattern/

# @param {String} s
# @return {Boolean}
def repeated_substring_pattern(s)
  s.scan(/^(\w+)\1+$/).any?
end

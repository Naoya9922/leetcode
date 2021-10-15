# https://leetcode.com/problems/valid-palindrome/

# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  str = s.scan(/[A-Za-z0-9]+/).map(&:downcase).join
  str == str.reverse
end
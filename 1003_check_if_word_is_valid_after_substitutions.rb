# https://leetcode.com/problems/check-if-word-is-valid-after-substitutions/

# @param {String} s
# @return {Boolean}
def is_valid(s)
  (0..).each do
    s = s.split('abc').join
    return true if s == ''
    return false if !s.include?('abc')
  end
end
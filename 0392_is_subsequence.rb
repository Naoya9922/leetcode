# https://leetcode.com/problems/is-subsequence/

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
  return true if s == ''
  t.chars.each do |c|
    s = s[1..] if c == s[0]
    return true if s == ''
  end
  false
end

# https://leetcode.com/problems/reverse-only-letters/

# @param {String} s
# @return {String}
def reverse_only_letters(s)
  regexp = '[A-Za-z]'
  target = s.scan(/(#{regexp}+)/).flatten.join.chars
  result = []
  s.chars.each do |c|
    result << (c.match?(regexp) ? target.pop : c)
  end
  result.join
end
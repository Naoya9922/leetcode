# https://leetcode.com/problems/license-key-formatting/

# @param {String} s
# @param {Integer} k
# @return {String}
def license_key_formatting(s, k)
  regex = /\w{#{k}}/
  reminder = s.split('-').join.reverse.split(regex).join.reverse
  main = s.split('-').join.reverse.scan(regex).map(&:reverse).reverse.join('-')
  result = []
  result << main unless main.empty?
  result << reminder unless reminder.empty?
  result = result.reverse
  result.join('-').upcase
end
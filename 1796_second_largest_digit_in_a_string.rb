# https://leetcode.com/problems/second-largest-digit-in-a-string/

# @param {String} s
# @return {Integer}
def second_highest(s)
  arr = s.scan(/\d+/).join.chars.uniq.sort
  arr.length <= 1 ? -1 : arr[-2].to_i
end
# https://leetcode.com/problems/largest-3-same-digit-number-in-string/

# @param {String} num
# @return {String}
def largest_good_integer(num)
  num.scan(/(\d)(\1{2})/).map(&:join).max || ''
end

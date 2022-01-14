# https://leetcode.com/problems/number-of-substrings-with-only-1s/

# @param {String} s
# @return {Integer}
def num_sub(s)
  ary = s.split('0')
  limit = 10 ** 9 + 7
  ary.map do |s|
    l = s.length
    ((l * (l + 1)) / 2) % limit
  end.sum
end

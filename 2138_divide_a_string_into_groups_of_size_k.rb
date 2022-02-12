# https://leetcode.com/problems/divide-a-string-into-groups-of-size-k/

# @param {String} s
# @param {Integer} k
# @param {Character} fill
# @return {String[]}
def divide_string(s, k, fill)
  fill_length = s.length / k
  fill_length += 1 unless s.length % k == 0
  fill_length *= k
  s = s.ljust(fill_length, fill)
  s.chars.each_slice(k).map(&:join)
end

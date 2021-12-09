# https://leetcode.com/problems/maximum-score-after-splitting-a-string/

# @param {String} s
# @return {Integer}
def max_score(s)
  ary = s.chars
  max = 0
  ary.each_with_index do |n, idx|
    next if idx == ary.length - 1
    left = ary[..idx]
    right = ary[idx+1..]
    count = left.count('0') + right.count('1')
    max = count if count > max
  end
  max
end
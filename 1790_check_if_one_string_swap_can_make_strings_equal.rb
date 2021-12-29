# https://leetcode.com/problems/check-if-one-string-swap-can-make-strings-equal/

# @param {String} s1
# @param {String} s2
# @return {Boolean}
def are_almost_equal(s1, s2)
  ary1 = s1.chars
  ary2 = s2.chars
  return false if ary1.count != ary2.count
  diff = []
  ary1.zip(ary2).each do |c1, c2|
    next if c1 == c2
    diff << [c1, c2]
  end
  return true if diff.empty?
  return false if diff.count != 2
  diff1, diff2 = diff
  diff1 != diff2 && diff1.sort == diff2.sort
end
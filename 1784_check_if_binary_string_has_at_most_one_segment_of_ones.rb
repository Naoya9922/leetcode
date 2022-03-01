# https://leetcode.com/problems/check-if-binary-string-has-at-most-one-segment-of-ones/

# @param {String} s
# @return {Boolean}
def check_ones_segment(s)
  s.scan(/01/).empty?
end

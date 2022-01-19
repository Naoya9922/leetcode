# https://leetcode.com/problems/longer-contiguous-segments-of-ones-than-zeros/

def max_length(ary)
  ary.max_by(&:length)&.length || 0
end

# @param {String} s
# @return {Boolean}
def check_zero_ones(s)
  ary1 = s.split('0')
  ary0 = s.split('1')
  max_length(ary1) > max_length(ary0)
end
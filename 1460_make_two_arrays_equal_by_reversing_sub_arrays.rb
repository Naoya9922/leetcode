# https://leetcode.com/problems/make-two-arrays-equal-by-reversing-sub-arrays/

# @param {Integer[]} target
# @param {Integer[]} arr
# @return {Boolean}
def can_be_equal(target, arr)
  target.sort == arr.sort
end
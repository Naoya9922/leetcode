# https://leetcode.com/problems/first-bad-version/

# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
  low = last_is_nod_bad_n = 1
  high = last_is_bad_n = n
  last_target = 0
  (0..).each do
    target = (low + high) / 2
    is_bad = is_bad_version(target)
    if is_bad
      return target if (target - last_target).abs == 1
      last_is_bad_n = target
      low = last_is_nod_bad_n
      high = last_is_bad_n - 1
    else
      last_is_nod_bad_n = target
      low = last_is_nod_bad_n + 1
      high = last_is_bad_n
    end
    last_target = target
  end
end

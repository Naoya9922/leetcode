# https://leetcode.com/problems/largest-time-for-given-digits/

# @param {Integer[]} arr
# @return {String}
def largest_time_from_digits(arr)
  times = arr.permutation.to_a.uniq.select do |ary|
    h = ary[..1].join.to_i
    t = ary[2..].join.to_i
    h <= 23 && t <= 59
  end.sort
  time = times.last
  return "" unless time
  "#{time[..1].join}:#{time[2..].join}"
end

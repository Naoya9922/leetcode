# https://leetcode.com/problems/count-hills-and-valleys-in-an-array/

# @param {Integer[]} nums
# @return {Integer}
def count_hill_valley(nums)
  diffs = nums.map.with_index do |n, i|
    next 0 if i == 0
    case
    when nums[i - 1] < n
      1
    when nums[i - 1] > n
      -1
    else
      0
    end
  end
  count = 0
  diffs.reject{|n| n == 0}.each_cons(2) do |n1, n2|
    count += 1 if n1 != n2
  end
  count
end

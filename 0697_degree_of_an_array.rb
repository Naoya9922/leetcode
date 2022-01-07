# https://leetcode.com/problems/degree-of-an-array/

# @param {Integer[]} nums
# @return {Integer}
def find_shortest_sub_array(nums)
  hash = nums.group_by(&:itself).transform_values(&:count)
  max = hash.max_by{|_, v| v}.last
  max = hash.select{|_, v| v == max}
  result = []
  max.keys.each do |n|
    result << (nums.index(n)..nums.rindex(n)).count
  end
  result.min
end
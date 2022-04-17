# https://leetcode.com/problems/set-mismatch/

# @param {Integer[]} nums
# @return {Integer[]}
def find_error_nums(nums)
  uniq = nums.uniq
  duped = nums.group_by(&:itself).transform_values(&:count).select{|_, c| c == 2}.keys.first
  missed = (1..nums.count).to_a.find{|n| !uniq.include?(n)}
  [duped, missed]
end

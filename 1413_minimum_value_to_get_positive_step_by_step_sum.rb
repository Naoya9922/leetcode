# https://leetcode.com/problems/minimum-value-to-get-positive-step-by-step-sum/

# @param {Integer[]} nums
# @return {Integer}
def min_start_value(nums)
  1.step.find do |s|
    sum = s
    result = true
    nums.each do |n|
      sum += n
      if sum <= 0
        result = false
        break
      end
    end
    return s if result
  end
  result
end
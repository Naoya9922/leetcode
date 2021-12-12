# https://leetcode.com/problems/summary-ranges/

# @param {Integer[]} nums
# @return {String[]}
def summary_ranges(nums)
  result = []
  tmp = []
  nums.each_with_index do |n, i|
    if (nums[i+1].nil? || nums[i+1]-n != 1)
      if tmp.any?
        result << "#{tmp.first}->#{n}"
        tmp = []
      else
        result << n.to_s
      end
    else
      tmp << n.to_s
    end
  end
  result
end
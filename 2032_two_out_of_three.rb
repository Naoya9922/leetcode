# https://leetcode.com/problems/two-out-of-three/

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @param {Integer[]} nums3
# @return {Integer[]}
def two_out_of_three(nums1, nums2, nums3)
  all_nums = (nums1 + nums2 + nums3).uniq
  all_nums.select do |num|
    [nums1, nums2, nums3].select do|nums|
      nums.include?(num)
    end.count >= 2
  end
end
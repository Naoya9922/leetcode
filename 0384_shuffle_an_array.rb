# https://leetcode.com/problems/shuffle-an-array/

class Solution
  attr_accessor :nums
=begin
  :type nums: Integer[]
=end
  def initialize(nums)
    @nums = nums
  end

=begin
  :rtype: Integer[]
=end
  def reset()
    self.nums
  end

=begin
  :rtype: Integer[]
=end
  def shuffle()
    self.nums.shuffle
  end
end

# Your Solution object will be instantiated and called as such:
# obj = Solution.new(nums)
# param_1 = obj.reset()
# param_2 = obj.shuffle()

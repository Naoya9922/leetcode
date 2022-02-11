# https://leetcode.com/problems/random-pick-index/

class Solution

  attr_accessor :num_h

=begin
  :type nums: Integer[]
=end
  def initialize(nums)
    @num_h = nums.each_with_index.to_a.group_by{|n,_| n}.transform_values{|v| v.map(&:last)}
  end

=begin
  :type target: Integer
  :rtype: Integer
=end
  def pick(target)
    self.num_h[target].sample
  end
end

# Your Solution object will be instantiated and called as such:
# obj = Solution.new(nums)
# param_1 = obj.pick(target)

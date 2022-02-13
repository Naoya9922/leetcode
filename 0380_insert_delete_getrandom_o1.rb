# https://leetcode.com/problems/insert-delete-getrandom-o1/

class RandomizedSet
  attr_accessor :set

  def initialize()
    @set = Set.new
  end

=begin
  :type val: Integer
  :rtype: Boolean
=end
  def insert(val)
    !!self.set.add?(val)
  end

=begin
  :type val: Integer
  :rtype: Boolean
=end
  def remove(val)
    !!self.set.delete?(val)
  end

=begin
  :rtype: Integer
=end
  def get_random()
    self.set.to_a.sample
  end
end

# Your RandomizedSet object will be instantiated and called as such:
# obj = RandomizedSet.new()
# param_1 = obj.insert(val)
# param_2 = obj.remove(val)
# param_3 = obj.get_random()

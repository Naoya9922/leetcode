# https://leetcode.com/problems/design-hashset/

class MyHashSet
  attr_accessor :set
  def initialize()
    @set = Set.new
  end

=begin
  :type key: Integer
  :rtype: Void
=end
  def add(key)
    set.add(key)
  end

=begin
  :type key: Integer
  :rtype: Void
=end
  def remove(key)
    set.delete(key)
  end

=begin
  :type key: Integer
  :rtype: Boolean
=end
  def contains(key)
    set.include?(key)
  end
end

# Your MyHashSet object will be instantiated and called as such:
# obj = MyHashSet.new()
# obj.add(key)
# obj.remove(key)
# param_3 = obj.contains(key)
# https://leetcode.com/problems/design-hashmap/

class MyHashMap
  attr_accessor :h
  def initialize()
    @h = {}
  end


=begin
    :type key: Integer
    :type value: Integer
    :rtype: Void
=end
  def put(key, value)
    h[key] = value
  end


=begin
    :type key: Integer
    :rtype: Integer
=end
  def get(key)
    h[key] || -1
  end


=begin
    :type key: Integer
    :rtype: Void
=end
  def remove(key)
    h[key] = nil
  end
end

# Your MyHashMap object will be instantiated and called as such:
# obj = MyHashMap.new()
# obj.put(key, value)
# param_2 = obj.get(key)
# obj.remove(key)
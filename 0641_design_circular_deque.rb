# https://leetcode.com/problems/design-circular-deque/

class MyCircularDeque
  attr_accessor :deque, :k
=begin
  :type k: Integer
=end
  def initialize(k)
    @deque = []
    @k = k
  end

=begin
  :type value: Integer
  :rtype: Boolean
=end
  def insert_front(value)
    return false if self.deque.length >= self.k
    self.deque.unshift(value)
    true
  end

=begin
  :type value: Integer
  :rtype: Boolean
=end
  def insert_last(value)
    return false if self.deque.length >= self.k
    self.deque.push(value)
    true
  end


=begin
  :rtype: Boolean
=end
  def delete_front()
    return false if self.deque.length <= 0
    self.deque.shift
    true
  end

=begin
  :rtype: Boolean
=end
  def delete_last()
    return false if self.deque.length <= 0
    self.deque.pop
    true
  end

=begin
  :rtype: Integer
=end
  def get_front()
    self.deque.first || -1
  end

=begin
  :rtype: Integer
=end
  def get_rear()
    self.deque.last || -1
  end

=begin
  :rtype: Boolean
=end
  def is_empty()
    self.deque.empty?
  end

=begin
  :rtype: Boolean
=end
  def is_full()
    self.deque.length == self.k
  end
end

# Your MyCircularDeque object will be instantiated and called as such:
# obj = MyCircularDeque.new(k)
# param_1 = obj.insert_front(value)
# param_2 = obj.insert_last(value)
# param_3 = obj.delete_front()
# param_4 = obj.delete_last()
# param_5 = obj.get_front()
# param_6 = obj.get_rear()
# param_7 = obj.is_empty()
# param_8 = obj.is_full()

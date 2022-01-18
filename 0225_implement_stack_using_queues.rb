# https://leetcode.com/problems/implement-stack-using-queues/

class MyStack
  attr_accessor :stack
  def initialize()
    @stack = []
  end

=begin
  :type x: Integer
  :rtype: Void
=end
  def push(x)
    stack.push(x)
  end

=begin
  :rtype: Integer
=end
  def pop()
    stack.pop
  end

=begin
  :rtype: Integer
=end
  def top()
    stack.last
  end

=begin
  :rtype: Boolean
=end
  def empty()
    stack.empty?
  end
end

# Your MyStack object will be instantiated and called as such:
# obj = MyStack.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.top()
# param_4 = obj.empty()
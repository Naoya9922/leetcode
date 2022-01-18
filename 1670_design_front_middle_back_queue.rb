# https://leetcode.com/problems/design-front-middle-back-queue/

class FrontMiddleBackQueue
  attr_accessor :queue
  def initialize()
    @queue = []
  end

=begin
  :type val: Integer
  :rtype: Void
=end
  def push_front(val)
    queue.unshift(val)
  end

=begin
  :type val: Integer
  :rtype: Void
=end
  def push_middle(val)
    len = queue.length
    idx = len / 2
    queue.insert(idx, val)
  end

=begin
  :type val: Integer
  :rtype: Void
=end
  def push_back(val)
    queue.push(val)
  end

=begin
  :rtype: Integer
=end
  def pop_front()
    queue.shift || -1
  end

=begin
  :rtype: Integer
=end
  def pop_middle()
    len = queue.length
    idx = len.even? ? (len / 2) - 1 : len / 2
    if (middle = queue[idx])
      queue.delete_at(idx)
      middle
    else
      -1
    end
  end

=begin
  :rtype: Integer
=end
  def pop_back()
    queue.pop || -1
  end
end

# Your FrontMiddleBackQueue object will be instantiated and called as such:
# obj = FrontMiddleBackQueue.new()
# obj.push_front(val)
# obj.push_middle(val)
# obj.push_back(val)
# param_4 = obj.pop_front()
# param_5 = obj.pop_middle()
# param_6 = obj.pop_back()
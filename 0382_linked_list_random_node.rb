# https://leetcode.com/problems/linked-list-random-node/

# Definition for singly-linked list.
# class ListNode
#   attr_accessor :val, :next
#   def initialize(val = 0, _next = nil)
#     @val = val
#     @next = _next
#   end
# end
class Solution
  attr_accessor :nodes
=begin
  :type head: ListNode
=end
  def initialize(head)
    ary = []
    while(head)
      ary << head.val
      head = head.next
    end
    @nodes = ary
  end

=begin
  :rtype: Integer
=end
  def get_random()
    len = nodes.length
    index = Random.rand(len)
    nodes[index]
  end
end

# Your Solution object will be instantiated and called as such:
# obj = Solution.new(head)
# param_1 = obj.get_random()
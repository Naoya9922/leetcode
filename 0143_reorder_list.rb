# https://leetcode.com/problems/reorder-list/

def to_array(head)
  ary = []
  while(head) do
    ary << head.val
    head = head.next
  end
  ary
end

# Definition for singly-linked list.
# class ListNode
#   attr_accessor :val, :next
#   def initialize(val = 0, _next = nil)
#     @val = val
#     @next = _next
#   end
# end
# @param {ListNode} head
# @return {Void} Do not return anything, modify head in-place instead.
def reorder_list(head)
  ary = to_array(head)
  result = []
  while(ary.length >= 1) do
    result << ary.shift
    result << ary.pop
  end
  result = result.compact
  while(head) do
    head.val = result.shift
    head = head.next
  end
end

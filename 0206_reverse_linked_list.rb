# https://leetcode.com/problems/reverse-linked-list/

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  node = head
  result = []
  while(node != nil) do
    result << node.val
    node = node.next
  end
  result.reverse
end
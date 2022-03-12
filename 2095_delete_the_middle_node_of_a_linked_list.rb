# https://leetcode.com/problems/delete-the-middle-node-of-a-linked-list/

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
def delete_middle(head)
  ary = []
  while(head) do
    ary << head.val
    head = head.next
  end
  ary.delete_at(ary.length / 2)
  ary
end

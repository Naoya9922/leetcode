# https://leetcode.com/problems/sort-list/

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
def sort_list(head)
  ary = []
  while(head)
    ary << head.val
    head = head.next
  end
  ary.sort
end
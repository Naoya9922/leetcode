# https://leetcode.com/problems/remove-duplicates-from-sorted-list/

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
def delete_duplicates(head)
  result = []
  (0..).each do
    break if !head
    if result.last == head.val
      head = head.next
      next
    end
    result << head.val
    head = head.next
  end
  result
end
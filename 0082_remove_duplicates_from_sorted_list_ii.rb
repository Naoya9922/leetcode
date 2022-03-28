# https://leetcode.com/problems/remove-duplicates-from-sorted-list-ii/

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
  ary = []
  while(head) do
    ary << head.val
    head = head.next
  end
  ary.group_by(&:itself).transform_values(&:count).select{|_, v| v == 1}.keys
end

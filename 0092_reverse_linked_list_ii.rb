# https://leetcode.com/problems/reverse-linked-list-ii/

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} left
# @param {Integer} right
# @return {ListNode}
def reverse_between(head, left, right)
  node = head
  result = [node.val]
  (0..).each do
    break if !node.next
    node = node.next
    result << node.val
  end
  sub_ary = result[(left-1)..(right-1)].reverse
  result[(left-1)..(right-1)] = sub_ary
  result
end
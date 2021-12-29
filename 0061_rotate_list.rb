# https://leetcode.com/problems/rotate-list/

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def rotate_right(head, k)
  ary = []
  while head
    ary << head.val
    head = head.next
  end
  k = k % ary.length if ary.length >= 1
  k.times do
    last = ary.pop
    ary.unshift(last) if last
  end
  ary
end
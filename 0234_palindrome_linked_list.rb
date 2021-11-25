# https://leetcode.com/problems/palindrome-linked-list/

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
  ary = []
  loop do
    ary << head.val
    break unless head.next
    head = head.next
  end
  length = ary.length
  if length.odd?
    half = length / 2
    first_half = ary[0..half]
    last_half = ary[half..(length - 1)]
  else
    half = length / 2 - 1
    first_half = ary[0..half]
    last_half = ary[(half+1)..(length - 1)]
  end
  first_half ==  last_half.reverse
end
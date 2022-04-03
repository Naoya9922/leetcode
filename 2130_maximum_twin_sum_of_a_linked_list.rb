# https://leetcode.com/problems/maximum-twin-sum-of-a-linked-list/

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Integer}
def pair_sum(head)
  ary = []
  while(head) do
    ary << head.val
    head = head.next
  end
  half = ary.length / 2
  first = ary[..half - 1]
  last = ary[half..].reverse
  first.zip(last).map(&:sum).max
end

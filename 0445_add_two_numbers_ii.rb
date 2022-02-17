# https://leetcode.com/problems/add-two-numbers-ii/

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
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  v1 = to_array(l1).join.to_i
  v2 = to_array(l2).join.to_i
  (v1 + v2).to_s.chars.map(&:to_i)
end

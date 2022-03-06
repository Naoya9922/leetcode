# https://leetcode.com/problems/odd-even-linked-list/

def to_array(head)
  ary = []
  while(head)
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
# @param {ListNode} head
# @return {ListNode}
def odd_even_list(head)
  ary = to_array(head)
  odds = []
  evens = []
  ary.each_slice(2) do |v1, v2|
    odds << v1
    evens << v2
  end
  (odds + evens).compact
end

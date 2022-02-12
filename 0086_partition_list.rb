# https://leetcode.com/problems/partition-list/

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} x
# @return {ListNode}
def partition(head, x)
  ary = []
  while(head) do
    ary << head.val
    head = head.next
  end
  greaters = []
  result = []
  ary.each do |v|
    if v >= x
      greaters << v
    else
      result << v
    end
  end
  result + greaters
end

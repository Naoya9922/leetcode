# https://leetcode.com/problems/reverse-nodes-in-k-group/

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
# @param {Integer} k
# @return {ListNode}
def reverse_k_group(head, k)
  ary = to_array(head)
  result = []
  ary.each_slice(k) do |sub_ary|
    sub_ary = sub_ary.reverse if sub_ary.length == k
    result += sub_ary
  end
  result
end

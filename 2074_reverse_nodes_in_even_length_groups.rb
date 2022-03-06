# https://leetcode.com/problems/reverse-nodes-in-even-length-groups/

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
#   attr_accessor :val, :next
#   def initialize(val = 0, _next = nil)
#     @val = val
#     @next = _next
#   end
# end
# @param {ListNode} head
# @return {ListNode}
def reverse_even_length_groups(head)
  ary = to_array(head)
  cnt = 0
  result = []
  begin
    tmp = ary.slice!(..cnt)
    tmp = tmp.reverse if tmp.length.even?
    result += tmp
    cnt += 1
  end while(tmp.any?)
  result.compact
end

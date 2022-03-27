# https://leetcode.com/problems/merge-in-between-linked-lists/

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
# @param {ListNode} list1
# @param {Integer} a
# @param {Integer} b
# @param {ListNode} list2
# @return {ListNode}
def merge_in_between(list1, a, b, list2)
  ary1 = to_array(list1)
  ary2 = to_array(list2)
  ary1[a..b] = ary2
  ary1
end

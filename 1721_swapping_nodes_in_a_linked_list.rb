# https://leetcode.com/problems/swapping-nodes-in-a-linked-list/

def to_array(node)
  ary = []
  while(node) do
    ary << node.val
    node = node.next
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
def swap_nodes(head, k)
  ary = to_array(head)
  ary[k-1], ary[-k] = ary[-k], ary[k-1]
  ary
end

# https://leetcode.com/problems/add-two-numbers/

def to_arr(list_node)
  arr = []
  while(list_node)
    arr << list_node.val
    list_node = list_node.next
  end
  arr
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
  n1 = to_arr(l1).reverse.join.to_i
  n2 = to_arr(l2).reverse.join.to_i
  (n1 + n2).to_s.chars.map(&:to_i).reverse
end
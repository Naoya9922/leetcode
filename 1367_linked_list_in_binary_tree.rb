# https://leetcode.com/problems/linked-list-in-binary-tree/

class Traverse
  attr_accessor :node, :result

  def initialize(node)
    @node = node
    @result = []
  end

  def execute
    self.traverse(node, [])
    self.result
  end

  private

  def traverse(node, path)
    path += [node.val]
    traverse(node.left, path) if node.left
    traverse(node.right, path) if node.right
    self.result << path if !node.left && !node.right
  end
end

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {ListNode} head
# @param {TreeNode} root
# @return {Boolean}
def is_sub_path(head, root)
  head_ary = []
  while(head) do
    head_ary << head.val
    head = head.next
  end
  result = Traverse.new(root).execute
  len = head_ary.length
  result.any? do |ary|
    ary.each_cons(len) do |sub_ary|
      return true if sub_ary == head_ary
    end
    false
  end
  false
end

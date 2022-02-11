# https://leetcode.com/problems/check-completeness-of-a-binary-tree/

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Boolean}
def is_complete_tree(root)
  queue = [root]
  result = [root]
  (0..).each do |l|
    new_queue = []
    queue.each do |e|
      new_queue << e&.left
      new_queue << e&.right
    end
    queue = queue.map{|e| e&.val}
    if new_queue.compact.empty?
      compact = queue.compact
      return queue.first(compact.count) == compact
    else
      return false if queue.compact.count != 2 ** l
    end
    queue = new_queue
  end
  true
end

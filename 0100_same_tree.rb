# https://leetcode.com/problems/same-tree/

def to_ary(node)
  queue = [node]
  result = []
  (0..).each do
    result += queue.map{|e| e && e.val}
    new_queue = []
    queue.each do |e|
      if e
        new_queue << e.left
        new_queue << e.right
      end
    end
    break if new_queue.compact.empty?
    queue = new_queue
  end
  result
end

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
  to_ary(p) == to_ary(q)
end
# https://leetcode.com/problems/cousins-in-binary-tree/

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
# @param {Integer} x
# @param {Integer} y
# @return {Boolean}
def is_cousins(root, x, y)
  queue = [root]
  (0..).each do
    new_queue = []
    check_hash = Hash.new([])
    queue.each do |e|
      if e.left
        new_queue << e.left
        check_hash[e.left.val] += [e.val]
      end
      if e.right
        new_queue << e.right
        check_hash[e.right.val] += [e.val]
      end
    end
    if check_hash[x].any? && check_hash[y].any?
      return true if (check_hash[x] + check_hash[y]).uniq.count != 1
    end
    break if new_queue.empty?
    queue = new_queue
  end
  false
end
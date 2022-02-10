# https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree/

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

def reformat(r, v)
  ary = r.select{|ary| ary.include?(v)}
  ary.map {|a| a[a.index(v)..]}.uniq
end

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
  result = Traverse.new(root).execute.map(&:reverse)
  p_ary = reformat(result, p.val)
  q_ary = reformat(result, q.val)
  val = (p_ary.flatten & q_ary.flatten).first
  TreeNode.new(val)
end

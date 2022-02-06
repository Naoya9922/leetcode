// https://leetcode.com/problems/binary-tree-level-order-traversal/

/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     val: number
 *     left: TreeNode | null
 *     right: TreeNode | null
 *     constructor(val?: number, left?: TreeNode | null, right?: TreeNode | null) {
 *         this.val = (val===undefined ? 0 : val)
 *         this.left = (left===undefined ? null : left)
 *         this.right = (right===undefined ? null : right)
 *     }
 * }
 */

function levelOrder(root: TreeNode | null): number[][] {
  if (root == null) {
    return [];
  }
  let queue = [root];
  const result = [];
  while (true) {
    const newQueue = [];
    const ary = [];
    queue.forEach((e: TreeNode) => {
      ary.push(e.val);
      if (e.left != null) {
        newQueue.push(e.left);
      }
      if (e.right != null) {
        newQueue.push(e.right);
      }
    });
    result.push(ary);
    if (newQueue.length == 0) {
      break;
    }
    queue = newQueue;
  }
  return result;
}

# https://leetcode.com/problems/kth-smallest-element-in-a-sorted-matrix/

# @param {Integer[][]} matrix
# @param {Integer} k
# @return {Integer}
def kth_smallest(matrix, k)
  matrix.flatten.sort[k-1]
end

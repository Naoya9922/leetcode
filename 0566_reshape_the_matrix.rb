# https://leetcode.com/problems/reshape-the-matrix/

# @param {Integer[][]} mat
# @param {Integer} r
# @param {Integer} c
# @return {Integer[][]}
def matrix_reshape(mat, r, c)
  sum = mat.map(&:length).sum
  return mat unless sum == (r * c)
  mat = mat.flatten
  result = []
  mat.each_slice(c) do |sub_ary|
    result << sub_ary
  end
  result
end

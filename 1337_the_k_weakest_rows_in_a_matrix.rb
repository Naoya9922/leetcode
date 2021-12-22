# https://leetcode.com/problems/the-k-weakest-rows-in-a-matrix/

# @param {Integer[][]} mat
# @param {Integer} k
# @return {Integer[]}
def k_weakest_rows(mat, k)
  mat.map(&:sum).each_with_index.to_a.sort{|ary1, ary2| ary1.first - ary2.first}.first(k).map(&:last)
end
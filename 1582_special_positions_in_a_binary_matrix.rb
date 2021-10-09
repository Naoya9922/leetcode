# https://leetcode.com/problems/special-positions-in-a-binary-matrix/

# @param {Integer[][]} mat
# @return {Integer}
def num_special(mat)
  row = mat.map.with_index do |ary, idx|
    if ary.sum == 1
      [idx, ary.index(1)]
    end
  end.compact
  column = mat.transpose.map.with_index do |ary, idx|
    if ary.sum == 1
      [ary.index(1), idx]
    end
  end.compact
  (row & column).count
end
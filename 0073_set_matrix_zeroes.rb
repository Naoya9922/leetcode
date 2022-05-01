# https://leetcode.com/problems/set-matrix-zeroes/

def zero_indices(ary)
  ary.each_with_index.select{|row, i| row.include?(0)}.map(&:last)
end

# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def set_zeroes(matrix)
  row_with_zeros = zero_indices(matrix)
  col_with_zeros = zero_indices(matrix.transpose)

  matrix.map!.with_index do |row, i|
    if row_with_zeros.include?(i)
      row.map!{0}
    else
      row.map!.with_index do |col, j|
        col_with_zeros.include?(j) ? 0 : col
      end
    end
  end
end

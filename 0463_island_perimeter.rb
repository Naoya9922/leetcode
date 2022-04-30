# https://leetcode.com/problems/island-perimeter/

def consecutive_count(ary)
  count = 0
  ary.each_with_index do |e, i|
    next if i == 0
    count += 1 if ary[i-1] == 1 && e == 1
  end
  count
end

# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
  total = grid.map{|row| row.sum}.sum * 4
  row_duped = grid.map{|row| consecutive_count(row)}.sum * 2
  col_duped = grid.transpose.map{|row| consecutive_count(row)}.sum * 2
  total - row_duped - col_duped
end

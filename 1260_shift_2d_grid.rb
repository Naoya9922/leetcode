# https://leetcode.com/problems/shift-2d-grid/

# @param {Integer[][]} grid
# @param {Integer} k
# @return {Integer[][]}
def shift_grid(grid, k)
  size = grid.first.length
  grid = grid.flatten
  (1..k).each do
    last = grid.pop
    grid.unshift(last)
  end
  grid.each_slice(size).to_a
end
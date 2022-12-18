# https://leetcode.com/problems/equal-row-and-column-pairs/

# @param {Integer[][]} grid
# @return {Integer}
def equal_pairs(grid)
  grid_t = grid.transpose
  keys = grid & grid_t
  grid_h = grid.tally.slice(*keys)
  grid_t_h = grid_t.tally.slice(*keys)

  grid_h.merge(grid_t_h){|k, v1, v2| v1 * v2}.values.sum
end

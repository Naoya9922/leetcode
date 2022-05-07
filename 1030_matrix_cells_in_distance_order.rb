# https://leetcode.com/problems/matrix-cells-in-distance-order/

def calculate_distaince(org, dest)
  org.zip(dest).map{|o, d| (o - d).abs}.inject(&:+)
end

# @param {Integer} rows
# @param {Integer} cols
# @param {Integer} r_center
# @param {Integer} c_center
# @return {Integer[][]}
def all_cells_dist_order(rows, cols, r_center, c_center)
  dest = [r_center, c_center]
  ary = (0..rows-1).map do |r|
    (0..cols-1).map do |c|
      [r, c]
    end
  end.flatten(1)
  ary.sort_by{|r, c| calculate_distaince([r,c], dest)}
end

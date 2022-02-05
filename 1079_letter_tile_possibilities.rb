# https://leetcode.com/problems/letter-tile-possibilities/

# @param {String} tiles
# @return {Integer}
def num_tile_possibilities(tiles)
  ary = tiles.chars
  (1..tiles.length).map do |i|
    ary.permutation(i).uniq.count
  end.sum
end

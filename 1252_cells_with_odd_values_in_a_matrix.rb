# https://leetcode.com/problems/cells-with-odd-values-in-a-matrix/

# @param {Integer} m
# @param {Integer} n
# @param {Integer[][]} indices
# @return {Integer}
def odd_cells(m, n, indices)
  ary = Array.new(m) { Array.new(n, 0) }
  rows = indices.map(&:first)
  columns = indices.map(&:last)

  rows.each do |r|
    ary.each_with_index do |a, idx|
      ary[idx] = a.map{|n| n += 1} if r == idx
    end
  end

  ary = ary.transpose
  columns.each do |c|
    ary.each_with_index do |a, idx|
      ary[idx] = a.map{|n| n += 1} if c == idx
    end
  end

  ary.sum{|a| a.count(&:odd?)}
end

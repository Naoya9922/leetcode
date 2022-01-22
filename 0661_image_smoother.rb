# https://leetcode.com/problems/image-smoother/

# @param {Integer[][]} img
# @return {Integer[][]}
def image_smoother(img)
  max_row = img.length
  max_col = img.first.length
  result = Array.new(max_row){Array.new(max_col)}
  img.each_with_index do |ary, row|
    ary.each_with_index do |n, col|
      sum = 0
      count = 0
      (-1..1).each do |i|
        next if (row + i) < 0 || (row + i) > max_row - 1
        (-1..1).each do |j|
          next if (col + j) < 0 || (col + j) > max_col - 1
          sum += img[row+i][col+j]
          count += 1
        end
      end
      result[row][col] = sum.fdiv(count).floor
    end
  end
  result
end
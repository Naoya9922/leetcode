# https://leetcode.com/problems/check-if-it-is-a-straight-line/

# @param {Integer[][]} coordinates
# @return {Boolean}
def check_straight_line(coordinates)
  x1, y1, x2, y2 = [coordinates.first, coordinates.last].flatten
  validate = -> (x, y) { x1 == x2 ? x == x1 : (y-y1) == ((y2-y1).fdiv(x2-x1) * (x-x1))}
  coordinates.all?{|x, y| validate.(x,y)}
end
# https://leetcode.com/problems/determine-color-of-a-chessboard-square/

# @param {String} coordinates
# @return {Boolean}
def square_is_white(coordinates)
  alpha = ('a'..'h').each_with_index.to_h
  a, n = coordinates.chars
  a = alpha[a] + 1
  (a + n.to_i).odd?
end

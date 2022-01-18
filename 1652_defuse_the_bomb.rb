# https://leetcode.com/problems/defuse-the-bomb/

# @param {Integer[]} code
# @param {Integer} k
# @return {Integer[]}
def decrypt(code, k)
  len = code.length
  code.map.with_index do |n, i|
    case
      when k > 0
        range = (i+1..i+k).map{|r| r > len - 1 ? r % len : r}
        range.inject(0){|sum, r| sum += code[r]}
      when k == 0
        0
      when k < 0
        range = (i+k...i).map{|r| r < 0 ? len - (r.abs % len) : r}
        range.inject(0){|sum, r| sum += code[r]}
    end
  end
end
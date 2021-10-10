# https://leetcode.com/problems/maximum-69-number/

# @param {Integer} num
# @return {Integer}
def maximum69_number (num)
  arr = num.to_s.chars
  index = arr.index{|n| n == "6"}
  if index
    arr[index] = "9"
    arr.join.to_i
  else
    num
  end
end
# https://leetcode.com/problems/sequential-digits/

# @param {Integer} low
# @param {Integer} high
# @return {Integer[]}
def sequential_digits(low, high)
  low_digit = low.to_s.chars.count
  high_digit = high.to_s.chars.count
  result = []
  (low_digit..high_digit).each do |d|
    (1..).each do |i|
      max = i+d-1
      break if max >= 10
      seq = (i..max).to_a.join.to_i
      next if seq > high || seq < low
      result << seq
    end
  end
  result
end
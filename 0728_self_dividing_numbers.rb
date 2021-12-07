# https://leetcode.com/problems/self-dividing-numbers

# @param {Integer} left
# @param {Integer} right
# @return {Integer[]}
def self_dividing_numbers(left, right)
  (left..right).select do |n|
    n.to_s.chars.all? do |d|
      n % d.to_i == 0 rescue false
    end
  end
end
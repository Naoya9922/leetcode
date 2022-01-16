# https://leetcode.com/problems/fizz-buzz/

# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
  (1..n).map do |i|
    next 'FizzBuzz' if i % 3 == 0 && i % 5 == 0
    next 'Fizz' if i % 3 == 0
    next 'Buzz' if i % 5 == 0
    i.to_s
  end
end
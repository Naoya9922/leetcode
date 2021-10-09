# https://leetcode.com/problems/numbers-with-same-consecutive-differences/

# @param {Integer} n
# @param {Integer} k
# @return {Integer[]}
def nums_same_consec_diff(n, k)
  if n == 1
    return (0..9).to_a
  end

  queue = (1..9).to_a

  (1...n).each do |level|
    next_queue = []
    queue.each do |num|
      tail_digit = num % 10
        next_digits = []
        next_digits << (tail_digit + k)
        if (k != 0)
          next_digits << (tail_digit - k)
        end
        next_digits.each do |next_digit|
        if(0 <= next_digit && next_digit < 10)
          new_num = num * 10 + next_digit
          next_queue << new_num
        end
      end
    end
    queue = next_queue
  end
  return queue
end



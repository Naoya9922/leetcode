# https://leetcode.com/problems/guess-number-higher-or-lower/

# The guess API is already defined for you.
# @param num, your guess
# @return -1 if my number is lower, 1 if my number is higher, otherwise return 0
# def guess(num)

def guessNumber(n)
  get_result(1, n)
end

def get_result(low, high)
  num = (low + high) / 2
  result = guess(num)
  return num if result == 0
  return get_result(low, num-1) if result == -1
  return get_result(num+1, high) if result == 1
end
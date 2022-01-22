# https://leetcode.com/problems/valid-perfect-square/

# @param {Integer} num
# @return {Boolean}
def is_perfect_square(num)
  result = false
  (1..num).each do |n|
    if n ** 2 == num
      result = true
      break
    end
    if n ** 2 > num
      break
    end
  end
  result
end
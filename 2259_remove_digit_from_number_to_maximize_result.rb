# https://leetcode.com/problems/remove-digit-from-number-to-maximize-result/

# @param {String} number
# @param {Character} digit
# @return {String}
def remove_digit(number, digit)
  ary = number.chars
  result = []
  deleted = false
  ary.each_with_index do |n, i|
    if n == digit && ary[i+1].to_i > n.to_i && !deleted
      deleted = true
      next
    end
    result << n
  end
  result.delete_at(result.rindex(digit)) unless deleted
  result.join.to_s
end

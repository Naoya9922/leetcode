# https://leetcode.com/problems/minimum-changes-to-make-alternating-binary-string/

# @param {String} s
# @return {Integer}
def min_operations(s)
  ary = s.chars.map(&:to_i)
  zero_first_cnt = 0
  one_first_cnt = 0
  ary.each.with_index do |n, i|
    if i.even?
      zero_first_cnt += 1 if n != 0
      one_first_cnt += 1 if n != 1
    else
      zero_first_cnt += 1 if n != 1
      one_first_cnt += 1 if n != 0
    end
  end
  [zero_first_cnt, one_first_cnt].min
end


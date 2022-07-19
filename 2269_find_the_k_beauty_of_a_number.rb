# https://leetcode.com/problems/find-the-k-beauty-of-a-number/

# @param {Integer} num
# @param {Integer} k
# @return {Integer}
def divisor_substrings(num, k)
  num.to_s.chars.each_cons(k).inject(0) do |acc, sub_str|
    acc += 1 if (sub_num = sub_str.join.to_i) != 0 && num % sub_num == 0
    acc
  end
end

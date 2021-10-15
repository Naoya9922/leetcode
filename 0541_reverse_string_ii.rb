# https://leetcode.com/problems/reverse-string-ii/

# @param {String} s
# @param {Integer} k
# @return {String}
def reverse_str(s, k)
  s.chars.each_slice(k).map.with_index do |ary, idx|
    idx.even? ? ary.reverse : ary
  end.join
end
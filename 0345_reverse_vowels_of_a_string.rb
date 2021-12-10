# https://leetcode.com/problems/reverse-vowels-of-a-string/

# @param {String} s
# @return {String}
def reverse_vowels(s)
  vowels = %w(a e i o u)
  indices = []
  s.chars.each_with_index do |c, i|
    indices << i if vowels.include?(c.downcase)
  end
  target = s.scan(/[#{vowels.join}]/i)
  indices.each do |i|
    s[i] = target.pop
  end
  s
end
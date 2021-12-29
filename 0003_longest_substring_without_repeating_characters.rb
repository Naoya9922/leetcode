# https://leetcode.com/problems/longest-substring-without-repeating-characters/

# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  ary = s.chars
  return 0 if ary.empty?
  s_idx = 0
  max = 1
  ary.each_with_index do |c, idx|
    next if idx == 0
    if (start = ary[s_idx..idx-1].index(c))
      s_idx = s_idx + start + 1
    else
      max = [(idx - s_idx) + 1, max].max
    end
  end
  max
end
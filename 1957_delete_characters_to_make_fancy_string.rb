# https://leetcode.com/problems/delete-characters-to-make-fancy-string/

# @param {String} s
# @return {String}
def make_fancy_string(s)
  duplicated = s.scan(/([#{s.chars.uniq.join('|')}])\1{2,}/).flatten.uniq
  duplicated.each {|d| s.gsub!(/#{d}{3,}/, "#{d * 2}")}
  s
end
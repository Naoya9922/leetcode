# https://leetcode.com/problems/reformat-the-string/

# @param {String} s
# @return {String}
def reformat(s)
  alpha = s.scan(/[a-z]/)
  numeric = s.scan(/\d/)
  return "" if (alpha.length - numeric.length).abs >= 2
  if alpha.length > numeric.length
    numeric << ""
    alpha.zip(numeric).join
  else
    alpha << ""
    numeric.zip(alpha).join
  end
end
# https://leetcode.com/problems/generate-a-string-with-characters-that-have-odd-counts/

# @param {Integer} n
# @return {String}
def generate_the_string(n)
  n.odd? ? 'a' * n : 'a' * (n-1) + 'b'
end
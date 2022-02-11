# https://leetcode.com/problems/camelcase-matching/

def upcase_letters(str)
  str.chars.select{|c| c == c.upcase}.join
end

def match?(pattarn, str)
  return false if upcase_letters(pattarn) != upcase_letters(str)
  pattern = pattarn.chars.join('.*?')
  str.match?(/#{pattern}/)
end

# @param {String[]} queries
# @param {String} pattern
# @return {Boolean[]}
def camel_match(queries, pattern)
  queries.map{|q| match?(pattern, q)}
end

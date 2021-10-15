# https://leetcode.com/problems/detect-capital/

# @param {String} word
# @return {Boolean}
def detect_capital_use(word)
  word.match?(/\A([A-Z]+\z)/) ||
  word.match?(/\A([a-z]+\z)/) ||
  word.match?(/\A([A-Z]([a-z])+\z)/)
end
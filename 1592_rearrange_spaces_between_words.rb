# https://leetcode.com/problems/rearrange-spaces-between-words/

# @param {String} text
# @return {String}
def reorder_spaces(text)
  space_count = text.count(' ')
  words = text.split(' ')
  word_count = words.count - 1
  if word_count == 0
    remain = space_count
  else
    remain = space_count % word_count
    space_count = space_count / word_count
  end
  words.join(' ' * space_count) + ' ' * remain
end

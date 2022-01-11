# https://leetcode.com/problems/capitalize-the-title/

# @param {String} title
# @return {String}
def capitalize_title(title)
  title.split(' ').map{|word| word.length > 2 ? word.capitalize : word.downcase}.join(' ')
end
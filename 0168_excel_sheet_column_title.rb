# https://leetcode.com/problems/excel-sheet-column-title/

# @param {Integer} column_number
# @return {String}
def convert_to_title(column_number)
  alphabets_with_number = ('A'..'Z').each.with_index(1).to_a
  count = alphabets_with_number.count
  div = column_number
  result = []
  (0..).each do
    div, mod = div.divmod(count)
    if mod == 0
      div -= 1
      mod = count
    end
    result.unshift(mod)
    if div <= count
      result.unshift(div) if div > 0
      break
    end
  end
  result.map{|n| alphabets_with_number.rassoc(n).first}.join
end

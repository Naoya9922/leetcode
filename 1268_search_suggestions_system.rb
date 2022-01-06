# https://leetcode.com/problems/search-suggestions-system/

# @param {String[]} products
# @param {String} search_word
# @return {String[][]}
def suggested_products(products, search_word)
  result = []
  search_word.chars.each_with_index do |_, i|
    result << products.select{|product| product.start_with?(search_word[0..i])}.sort.first(3)
  end
  result
end
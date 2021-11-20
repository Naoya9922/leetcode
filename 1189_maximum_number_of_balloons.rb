# https://leetcode.com/problems/maximum-number-of-balloons/

# @param {String} text
# @return {Integer}
def max_number_of_balloons(text)
  target = 'balloon'.chars
  ary = text.chars
  count = 0
  catch(:outer) do
    (0..).each do
      target.each do |chr|
        throw :outer unless (pos = ary.index(chr))
        ary.delete_at(pos)
      end
      count += 1
    end
  end
  count
end
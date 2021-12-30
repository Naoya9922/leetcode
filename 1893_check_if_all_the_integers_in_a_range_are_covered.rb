# https://leetcode.com/problems/check-if-all-the-integers-in-a-range-are-covered/

# @param {Integer[][]} ranges
# @param {Integer} left
# @param {Integer} right
# @return {Boolean}
def is_covered(ranges, left, right)
  ranges = ranges.map{|r| Range.new(*r)}
  (left..right).all? do |x|
    ranges.any?{|r| r.cover?(x)}
  end
end
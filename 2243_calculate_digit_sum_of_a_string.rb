# https://leetcode.com/problems/calculate-digit-sum-of-a-string/

module StringWithSlice
  refine String do
    def slice(size = 1)
      self.chars.each_slice(size).to_a
    end
  end
end

using StringWithSlice

# @param {String} s
# @param {Integer} k
# @return {String}
def digit_sum(s, k)
  return s if s.length <= k
  ary = s.slice(k)
  s = ary.map{|sub_ary| sub_ary.map(&:to_i).sum}.join
  s = digit_sum(s, k)
  s
end

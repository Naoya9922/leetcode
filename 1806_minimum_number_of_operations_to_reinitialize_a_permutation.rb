# https://leetcode.com/problems/minimum-number-of-operations-to-reinitialize-a-permutation/

# @param {Integer} n
# @return {Integer}
def reinitialize_permutation(n)
  ary_org = (0..n-1).to_a
  ary = ary_org.dup
  (1..).each do |i|
    ary = ary.map.with_index do |num, idx|
      if idx % 2 == 0
        ary[idx/2]
      else
        ary[(n/2) + (idx-1)/2]
      end
    end
    return i if ary == ary_org
  end
end
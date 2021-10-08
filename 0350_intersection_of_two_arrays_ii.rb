# https://leetcode.com/problems/intersection-of-two-arrays-ii/

def to_nums_hash(nums)
  nums.group_by(&:itself).map{|k,v| [k, v.count]}.to_h
end

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
  hash1 = to_nums_hash(nums1)
  hash2 = to_nums_hash(nums2)
  intersection = hash1.inject({}) do |r, (k,v)|
    r[k] = [hash2[k], v].min if hash2[k]
    r
  end
  intersection.inject([]){|ary, (k,v)| v.times{ary << k}; ary}
end
# https://leetcode.com/problems/decode-xored-array/

# @param {Integer[]} encoded
# @param {Integer} first
# @return {Integer[]}
def decode(encoded, first)
  encoded.inject([first]) do |acc, n|
    acc << (acc.last ^ n)
  end
end
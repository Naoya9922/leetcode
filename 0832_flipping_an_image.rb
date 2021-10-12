# https://leetcode.com/problems/flipping-an-image/

# @param {Integer[][]} image
# @return {Integer[][]}
def flip_and_invert_image(image)
  image.map(&:reverse).map{|ary| ary.map{|i| (i-1).abs}}
end
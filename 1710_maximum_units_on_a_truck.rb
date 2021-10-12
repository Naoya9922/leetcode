# https://leetcode.com/problems/maximum-units-on-a-truck/

# @param {Integer[][]} box_types
# @param {Integer} truck_size
# @return {Integer}
def maximum_units(box_types, truck_size)
  box_types = box_types.sort_by{|n,u| u}.reverse
  result_u = 0
  result_n = 0
  box_types.each do |n,u|
    if (result_n + n) > truck_size
      result_u += (truck_size - result_n) * u
      break
    else
      result_u += (n * u)
      result_n += n
    end
  end
  result_u
end
# https://leetcode.com/problems/design-parking-system/

class ParkingSystem
  attr_accessor :cars
=begin
  :type big: Integer
  :type medium: Integer
  :type small: Integer
=end
  def initialize(big, medium, small)
    @cars = {1 => big, 2 => medium, 3 => small}
  end

=begin
  :type car_type: Integer
  :rtype: Boolean
=end
  def add_car(car_type)
    remain = self.cars[car_type].to_i
    return false if remain <= 0
    self.cars[car_type] -= 1
    true
  end
end

# Your ParkingSystem object will be instantiated and called as such:
# obj = ParkingSystem.new(big, medium, small)
# param_1 = obj.add_car(car_type)

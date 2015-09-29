class Vehicle
  def initialize(avg)
    @average_speed = avg
    # @wheels = wheels
    # @engines = engines
    # @gears = gears
    # @wings = wings
  end

  def travel_time(distance)
    distance / @average_speed
  end

  def number_of_wheels
    4
  end

  def number_of_engines
    1
  end

  def number_of_gears
    4
  end

  def number_of_wings
    0
  end
end

class ElectricCar < Vehicle
  def number_of_gears
    1
  end
end

chevy = Vehicle.new(60)
puts chevy.number_of_wheels
puts chevy.number_of_gears

leaf = ElectricCar.new(30)
puts leaf.number_of_wheels
puts leaf.number_of_gears

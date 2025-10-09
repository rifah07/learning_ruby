module Towable
  def can_tow?(pounds)
    pounds < 2000
  end
end
class Vehicle
  attr_accessor :color
  attr_reader :year, :model
  @@number_of_vehicles = 0

  def self.number_of_vehicles
    puts "Number of Vehicles: #{@@number_of_vehicles}"
  end
  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon gas"
  end

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def speed_up(number)
    @current_speed += number
    puts "Speed increase: #{number}"
  end

  def brake(number)
    @current_speed -= number
    puts "You pushed brake and decreased #{number} speed"
  end

  def current_speed
    puts "Your current speed is #{@current_speed} mph"
  end

  def spray_paint(color)
    self.color = color
    puts "New #{color} paint job looks great!"
  end

  def shut_down
    @current_speed = 0
    puts "Now let's park!"
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    "My car is a #{color}, #{year}, #{@model}"
  end

end

class MyTruck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 2

  def to_s
    "My truck  is a #{self.color}, #{self.year}, #{self.model}!"
  end

end

rr = MyCar.new(1997, 'chevy lumina', 'white')
rr.speed_up(20)
rr.current_speed
rr.speed_up(20)
rr.current_speed
rr.brake(20)
rr.current_speed
rr.brake(20)
rr.current_speed
rr.shut_down
MyCar.gas_mileage(13, 351)
rr.spray_paint("red")
puts rr
puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors
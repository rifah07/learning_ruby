module Towable
  def can_tow?(pounds)
    pounds < 2000
  end
end
class Vehicle

  @@number_of_vehicles = 0

  def self.number_of_vehicles
    puts "Number of Vehicles: #{@@number_of_vehicles}"
  end
  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon gas"
  end

  def initialize
    @@number_of_vehicles += 1
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
  # Add an accessor method to your MyCar class to change and view the color of your car.
  # Then add an accessor method that allows you to view, but not modify, the year of your car.
  attr_accessor :color
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  # You want to create a nice interface that allows you to accurately describe the
  # action you want your program to perform.
  # Create a method called spray_paint that can be called on an object and will modify the color of the car.

  def spray_paint(color)
    self.color = color
    puts "New #{color} paint job looks great!"
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


  # Override the to_s method to create a user friendly print out of your object.
  def to_s
    "My car is a #{color}, #{year}, #{@model}"
  end

  def shut_down
    @current_speed = 0
    puts "Now let's park!"
  end
end

class MyTruck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 2
end

rr = MyCar.new(2000, 'Yellow', 'Rolls Royce')
rr.speed_up(17)
rr.current_speed
rr.brake(5)
rr.current_speed
rr.speed_up(10)
rr.current_speed
rr.shut_down
rr.current_speed

puts rr.color
rr.color = "Black"
puts rr.color
puts rr.year

rr.spray_paint("Red")

MyCar.gas_mileage(70, 140)
puts rr
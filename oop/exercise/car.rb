class MyCar
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

  # Add a class method to your MyCar class that calculates the gas mileage (i.e. miles per gallon) of any car.
  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon gas"
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
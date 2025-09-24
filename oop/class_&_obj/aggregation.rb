class Passenger
  puts "This is for Passenger"
end

class Car
  def initialize(passengers)
    @passengers = passengers
  end
end

# Passenger can exist without Car

passengers = [Passenger.new]
my_car = Car.new(passengers)

=begin
In this case, Car instances have a list of Passenger objects,
but these Passenger objects can exist independently of the Car instance.
They can be passed to the Car object when it's instantiated or any time
before the Car instance is destroyed. However, the Passenger objects will
continue to live on after the Car object is destroyed.

As with composed objects, we can say that a container has a
has-a relationship to its aggregated objects. That is, the container "has an" aggregated object.
-The Launch School
=end

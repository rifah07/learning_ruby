=begin
Class methods are methods we can call directly on the class itself,
without having to instantiate any objects.
When defining a class method, we prepend the method name with the reserved word -> (self.) .

class methods are where we put functionality that does not pertain to individual objects.
Objects contain state, and if we have a method that does not need to deal with states,
then we can just use a class method.
- The Launch School

we can create variables for an entire class that are appropriately named class variables.
Class variables are created using two @ symbols like so: @@
=end

class GoodDog
  @@number_of_dogs = 0

  def initialize
    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs   # => 0

dog1 = GoodDog.new
dog2 = GoodDog.new

puts GoodDog.total_number_of_dogs   # => 2

=begin
Class variables allow all instances to share and update the same piece of data,
keeping a count that reflects the total number of objects created from the class.
This way, you have a single source of truth for this count,
=end

puts dog1

=begin
puts dog1 is equivalent to puts dog1.to_s
By default, the to_s method returns the name of the object's class and an encoding of the object id.
Note: puts method calls to_s for any argument that is not an array. For an array, it writes on separate
lines the result of calling to_s on each element of the array.
=end

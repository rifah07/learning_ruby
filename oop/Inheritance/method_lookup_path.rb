module Walkable
  def walk
    "I'm walking!"
  end
end

module Swimmable
  def swim
    "I'm swimming!"
  end
end

module Climbable
  def climb
    "I'm climbing!"
  end
end

class Animal
  include Walkable

  def speak
    "This animal can speak"
  end
end

puts "----------------Animal method lookup path----------------"
puts Animal.ancestors

=begin
This means that when we call a method of any Animal object,
first Ruby looks in the Animal class, then the Walkable module,
then the Object class, then the Kernel module, and finally the BasicObject class.
=end

fido = Animal.new
puts fido.speak
puts fido.walk
# puts fido.swim # undefined method 'swim' for an instance of Animal (NoMethodError)
# Ruby traversed all the classes and modules in the list, and didn't find a swim method, so it threw an error.
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

class Cat < Animal
  include Swimmable
  include Climbable
end

puts "---Cat method lookup---"
puts Cat.ancestors

# Ruby actually looks at the last module we included first
=begin
 The module included in the superclass made it on to the method lookup path.
 That means that all Cat objects will have access to not only Animal methods,
 but also methods defined in the Walkable module, as well as all other modules mixed
 in to any of its superclasses.
=end

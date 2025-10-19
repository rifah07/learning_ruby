# We have a generic superclass called Animal that can keep all
# basic behavior of all animals. We can then expand on the model
# a little and have, perhaps, a Mammal subclass of Animal.
# Then Fish, another subclass of Animal.
# Cat, Dog subclass of Mammal.

# Classes like Fish and Mammal use inheritance to share features,
# such as Fish having a swim method and Mammal having a warm_blooded? method,
# which their subclasses inherit. But when some animals need extra abilities
# (like swimming) that don't fit neatly in one class, modules can be mixed in
# to share those behaviors without repeating code.

module Swimmable
  def swim
    "I'm swimming!"
  end
end

class Animal; end

class Fish < Animal
  include Swimmable
end

class Mammal < Animal
end

class Cat < Mammal
end

class Dog
  include Swimmable
end

rohita = Fish.new
puts rohita.swim

Cat.new
# puts kitty.swim ## => NoMethodError: undefined method `swim' for #<Cat:0x007fc453152308>

tommy = Dog.new
puts tommy.swim

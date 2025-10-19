# Ruby provides us with the super keyword to call methods earlier in the method lookup path.
# When you call super from within a method, it searches the method lookup path for a method
# with the same name, then invokes it.

class Animal
  def speak
    'Hello'
  end
end

class Cat < Animal
  def speak
    super + ' from Cat class'
  end
end

animal = Animal.new
puts animal.speak

kitty = Cat.new
puts kitty.speak

## Q/A
#
# Why can't we just invoke speak directly within the GoodDog class's speak method
# to reach the superclass version? What would happen if we did?

# Because it then creates an infinite recursion, as it will keep calling itself.

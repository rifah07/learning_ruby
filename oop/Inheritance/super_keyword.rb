=begin
Ruby provides us with the super keyword to call methods earlier in the method lookup path.
When you call super from within a method, it searches the method lookup path for a method
with the same name, then invokes it.
=end

class Animal
  def speak
    "Hello"
  end
end

class Cat < Animal
  def speak
    super + " from Cat class"
  end
end

animal = Animal.new
puts animal.speak

kitty = Cat.new
puts kitty.speak
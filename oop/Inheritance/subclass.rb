=begin
Inheritance is when a class inherits behavior from another class. The class that is inheriting behavior is called the subclass and
the class it inherits from is called the superclass.
=end

class Animal
  def Speak
    "Hello!"
  end
end

class Cat < Animal #this is how we define a child/sub class from parent class
end

class Hen < Animal
end

kitty = Cat.new
puts kitty.Speak

timmi = Hen.new
puts timmi.Speak

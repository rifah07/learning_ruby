# Inheritance is when a class inherits behavior from another class. The class that is inheriting behavior is called the subclass and
# the class it inherits from is called the superclass.

class Animal
  def Speak
    'Hello!'
  end
end

class Cat < Animal # this is how we define a child/sub class from parent/super class
  attr_accessor :name

  def initialize(n)
    self.name = n
  end

  def Speak
    "#{name} says batman!"
  end
end

class Hen < Animal
end

kitty = Cat.new('Kitty')
puts kitty.Speak

timmi = Hen.new
puts timmi.Speak

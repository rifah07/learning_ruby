# inheritance based
class Animal
  def speak
    puts "Some generic sound"
  end
end

class Dog < Animal
  def speak
    puts "Woof!"
  end
end

class Cat < Animal
  def speak
    puts "Meow!"
  end
end

animals = [Dog.new, Cat.new, Animal.new]
animals.each { |animal| animal.speak }
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


# Duck Typing Polymorphism

class Duck
  def quack
    puts "Quack quack!"
  end
end

class Person
  def quack
    puts "The person imitates a duck!"
  end
end

def make_quack(animal)
  animal.quack
end

make_quack(Duck.new) # Quack quack!
make_quack(Person.new) # The person imitates a duck!
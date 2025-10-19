# Another more common way of using super is with initialize

class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    'Hello.'
  end
end

class Cat < Animal
  def initialize(age, name)
    super(name)
    @age = age
  end

  def speak
    super + " My name is #{@name}! and my age is #{@age}"
  end
end

kitty = Cat.new(2, 'Kitty')
puts kitty.speak

class GoodDog
  def initialize(name)
    @name = name
  end

  def get_name # getter method, to get the name of instance variable
    @name
  end

  def set_name=(name) # to change value of instance variable we reach for a setter method
    @name = name
  end

  def speak
    "#{@name} speaks Arf!"
  end
end

sparky = GoodDog.new("Sparky")
fido = GoodDog.new("Fido")

puts sparky.speak
puts sparky.get_name
sparky.set_name = "Tommy"
puts sparky.get_name

puts fido.speak
puts fido.get_name
# state is different, behaviour is same
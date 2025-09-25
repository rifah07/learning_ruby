class GoodDog
  def initialize(name)
    @name = name
  end

  def get_name # getter method.
    @name
  end

  def speak
    "#{@name} speaks Arf!"
  end
end

sparky = GoodDog.new("Sparky")
fido = GoodDog.new("Fido")

puts sparky.speak
puts sparky.get_name
puts fido.speak
puts fido.get_name
# state is different, behaviour is same
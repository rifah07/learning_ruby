class GoodDog
  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} speaks Arf!"
  end
end

sparky = GoodDog.new("Sparky")
fido = GoodDog.new("Fido")

puts sparky.speak
puts fido.speak
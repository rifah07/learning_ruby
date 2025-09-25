class GoodDog
  def initialize(name)
    @name = name
  end

=begin
  def get_name # getter method, to get the name of instance variable
    @name
  end

  def set_name=(name) # to change value of instance variable we reach for a setter method
    # here name of the method is "set_name="
    @name = name
  end
=end

=begin
  as a convention, Rubyists typically want to name those getter and setter methods
  using the same name as the instance variable they are exposing and setting.
=end
  def name
    @name
  end

  def name=(n)
    @name = n
  end

  def speak
    "#{@name} speaks Arf!"
  end
end

sparky = GoodDog.new("Sparky")
fido = GoodDog.new("Fido")

puts sparky.speak
=begin
puts sparky.get_name
sparky.set_name = "Tommy"
puts sparky.get_name
=end
puts sparky.name
sparky.name = "Tommy"
puts sparky.name


puts fido.speak
puts fido.name
# state is different, behaviour is same
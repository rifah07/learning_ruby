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

# Setter methods always return the value that is passed in as an argument,
# regardless of what happens inside the method. If the setter tries to return
# something other than the argument's value, it just ignores that attempt.
class Dog
  def name=(n)
    @name = n
    # Lillian
  end
end

tommy = Dog.new
puts tommy.name = "Tommy"

# USIMG GETTER AND SETTER IS NECESSARY BUT FOR ACTUAL APPLICATION it will make the program too large
# So Ruby has a built-in way to automatically create
# these getter and setter methods for us, using the attr_accessor method.

# Now let's see the above GoodDog class again with attr_accessor

class GoodDog_1
  attr_accessor :name # Ruby has a built-in way to automatically create these
                      # getter and setter methods for us, using the attr_accessor method.

  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} speaks Arf!"
  end
end

puts "This is another class"
alen = GoodDog_1.new("Alen")
puts alen.name
alen.name = "Polen"
puts alen.name
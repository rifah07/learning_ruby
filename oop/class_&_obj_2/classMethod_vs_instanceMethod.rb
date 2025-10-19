#===============================================
# Understanding self, instance methods, and class methods in Ruby
#===============================================

# In Ruby, METHODS inside a class can be:
#   * Instance methods: Called on individual objects ('instances') of a class
#   * Class methods: Called on the class itself, NOT on its objects

class GoodDog
  # attr_accessor lets us set/get :name, :height, :weight on each object
  attr_accessor :name, :height, :weight

  # ------------------------------------------------------
  # Instance Method (NO 'self' before the method name)
  # Called on objects of GoodDog, e.g. sparky.change_info(...)
  def change_info(n, h, w)
    # When using setters INSIDE the class, always use self.attr to avoid confusion with local variables
    self.name   = n
    self.height = h
    self.weight = w
  end

  # Example: This method returns info about the *calling* object
  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end

  # Test: What is self inside an instance method?
  def what_is_self
    self # Refers to the object (e.g., sparky)
  end

  # ------------------------------------------------------
  # Class Variable: Shared across ALL instances of this class!
  @@number_of_dogs = 0

  def initialize(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
    @@number_of_dogs += 1
  end

  # ------------------------------------------------------
  # Class Method (with 'self.' before the method name!)
  # Called ONLY on the class, NOT its objects!
  def self.total_number_of_dogs
    @@number_of_dogs
  end

  # Test: What is self inside a class definition (outside any method)?
  puts "Inside class definition, self = #{self}" # Prints: GoodDog
end

# ==============================================
# Usage Example
# ==============================================

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
puts sparky.info # Instance method call

# Instance method - what_is_self returns the object itself
puts sparky.what_is_self #=> #<GoodDog:...>

# Change sparky's info
sparky.change_info('Rex', '16 inches', '14 lbs')
puts sparky.info

# Class method: called on the CLASS, not the object!
puts "Dogs created: #{GoodDog.total_number_of_dogs}"

# ==============================================
# Table: How to define and call methods
# ==============================================
#
# | Syntax                      | Type           | Who calls it?                 | Example usage                  |
# |-----------------------------|----------------|-------------------------------|-------------------------------|
# | def change_info             | Instance       | Objects of the class          | sparky.change_info(...)       |
# | def self.total_number_of_dogs| Class         | The class itself              | GoodDog.total_number_of_dogs  |
#
# Key point: 'self.' before method name means a class method.
#
# ==============================================
# Without 'self' in a setter, Ruby thinks it's a local variable!
# ==============================================
class DemoSetter
  attr_accessor :name

  def set_name_problem(name)
    name # assigns parameter to local var, DOES NOT set @name!
  end

  def set_name_proper(name)
    self.name = name # Uses setter to set @name
  end
end

demo = DemoSetter.new
demo.set_name_problem('Foo')
puts demo.name # Prints nothing (nil)!
demo.set_name_proper('Bar')
puts demo.name # Prints "Bar"

# ==============================================
# In summary
# ==============================================
#  - Instance methods: def method_name           (use with objects)
#  - Class methods:    def self.method_name      (use with class itself)
#  - Inside instance methods, self = the object
#  - Inside class methods, self = the class

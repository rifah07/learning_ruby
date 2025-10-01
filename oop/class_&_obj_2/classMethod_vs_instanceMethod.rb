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
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  # Test: What is self inside an instance method?
  def what_is_self
    self  # Refers to the object (e.g., sparky)
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
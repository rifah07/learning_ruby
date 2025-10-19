# ========================================
# Understanding `self` in Ruby
# ========================================
# In Ruby, `self` can mean different things depending on its scope.
# Two important cases:
#   1. Inside an instance method → `self` refers to the *calling object*.
#   2. Inside a class but outside instance methods → `self` refers to the *class itself*.
#
# Rules to remember:
# - Use `self` inside instance methods when you need to call a *setter method*
#   (to avoid Ruby thinking you're creating a local variable).
# - Use `self` to define *class methods*.

class GoodDog
  attr_accessor :name, :height, :weight

  # ----------------------------------------
  # INITIALIZE METHOD
  # ----------------------------------------
  # Here we use `self.attr=` instead of `@attr` because:
  #   - `@name = n` assigns directly to the instance variable
  #   - `self.name = n` calls the setter method `name=`
  # Both achieve similar results, but when we want to be explicit about calling
  # the setter method (especially if it has extra logic), we use `self`.
  def initialize(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  # ----------------------------------------
  # INSTANCE METHOD WITH SELF
  # ----------------------------------------
  # `self` inside instance methods = the current calling object.
  # Example: if `sparky` calls `change_info`,
  #   then inside the method `self` is `sparky`.
  def change_info(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  # ----------------------------------------
  # USING SELF TO CALL OTHER INSTANCE METHODS
  # ----------------------------------------
  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end

  # ----------------------------------------
  # TESTING WHAT SELF IS
  # ----------------------------------------
  # Returns whatever the current `self` refers to.
  # In an instance method, that's always the calling object.
  def what_is_self
    self
  end
end

# Create object
sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
p sparky.what_is_self
# Output is the `sparky` object because inside the method `self` refers to the instance.

# Try calling change_info
sparky.change_info('Rex', '15 inches', '12 lbs')
puts sparky.info
# "Rex weighs 12 lbs and is 15 inches tall."

# ========================================
# SELF OUTSIDE INSTANCE METHODS
# ========================================
# When used in the class body but NOT inside an instance method,
# `self` refers to the CLASS itself.
#
# Example: defining a class method with `self.method_name`.
class MyAwesomeClass
  def self.this_is_a_class_method
    "I'm a class method!"
  end
end

puts MyAwesomeClass.this_is_a_class_method
# => "I'm a class method!"

# ----------------------------------------
# WHY USE `self` FOR CLASS METHODS?
# ----------------------------------------
# `def self.method` is just shorthand for `def ClassName.method`.
# Example:
class GoodDog
  @@number_of_dogs = 0

  def initialize
    @@number_of_dogs += 1
  end

  # This is a class method
  def self.total_number_of_dogs
    @@number_of_dogs
  end
end

GoodDog.new('Max', '14 inches', '20 lbs')
GoodDog.new('Buddy', '16 inches', '25 lbs')

puts GoodDog.total_number_of_dogs
# => 2 (Because we created 2 objects)

# ========================================
# SUMMARY OF `self`
# ========================================
# 1. Inside an instance method → `self` is the CURRENT OBJECT (e.g. sparky).
#    - Useful when calling setter methods or chaining object methods.
#    - `self.name=` is like calling `sparky.name=` from outside.
#
# 2. Inside a class but OUTSIDE instance methods → `self` is the CLASS itself.
#    - This is how you define class methods (methods you call on the class).
#    - Example: `def self.method` == `def ClassName.method`.
#
# => `self` is context-dependent, and understanding it is key to mastering OOP in Ruby!

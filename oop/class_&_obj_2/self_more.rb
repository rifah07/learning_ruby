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
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
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

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

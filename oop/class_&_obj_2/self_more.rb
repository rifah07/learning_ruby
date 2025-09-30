# ========================================
# Understanding `self` in Ruby
# ========================================
# In Ruby, `self` can mean different things depending on its scope.
# Two important cases:
#   1. Inside an instance method → `self` refers to the *calling object*.
#   2. Inside a class but outside instance methods → `self` refers to the *class itself*.

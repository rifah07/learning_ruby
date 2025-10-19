# When you have a specific action that you need to perform, look for it first among Ruby's standard classes.
# Using libraries like the Math module can help you solve problems more efficiently.

p Math.sqrt(16) # => 4.0
p Math::PI # => 3.141592653589793

# What if you wanted to calculate what specific day July 4th occurred in 2008? You can use Ruby's built-in Time class.

t = Time.new(2008, 7, 4)
puts t.strftime('%A') # => "Friday"

p t.monday?
p t.tuesday?

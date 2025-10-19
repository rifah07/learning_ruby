# Recursion is another way to create a loop in Ruby.
# Recursion is the act of calling a method from within itself.
# That probably sounds confusing so let's look at some actual code to get a better idea. -The Launch School

# This is without recursion
#   def doubler(start)
#     puts start * 2
#   end

def doubler(start)
  puts start
  return unless start < 10

  doubler(start * 2)
end

doubler(2)

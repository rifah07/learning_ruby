# Recursion is another way to create a loop in Ruby.
# Recursion is the act of calling a method from within itself.
 # That probably sounds confusing so let's look at some actual code to get a better idea.

def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end

doubler(2)
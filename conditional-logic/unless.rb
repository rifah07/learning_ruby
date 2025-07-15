age = 19
unless age < 18
  puts "Get a job."
end
# The unless statement is the opposite of an if statement.
# It executes the code block if the condition is false.
# In this case, it will print "Get a job." because age is not less than 18.

# unless with an else clause.
age = 19
puts "Welcome to a life of debt." unless age < 18

unless age < 18
  puts "Down with that sort of thing."
else
  puts "Careful now!"
end
# This will print "Down with that sort of thing." because age is not less than 18.
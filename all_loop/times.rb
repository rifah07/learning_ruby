5.times do
  puts "Hello, world!"
end
# If you need to run a loop for a specified number of times, then look no further than the trusty #times loop.
# It works by iterating through a loop a specified number of times and even throws 
# in the bonus of accessing the number it’s currently iterating through.

# Remember, loops will start counting from a zero index unless specified otherwise
# (e.g., 5.times will iterate from 0 to 4).

# The #times method is a great way to repeat an action a specific number of times.
# It’s simple, effective, and keeps your code clean and readable.

5.times do |number|
  puts "Alternative fact number #{number}"
end
# The until loop is the opposite of the while loop. It will keep going until the condition is met.
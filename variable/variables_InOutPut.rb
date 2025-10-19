name = gets

puts "Hello #{name}!" # ! goes to new line


print 'What is your name? ' # print does not add a newline character at the end
# gets waits for user input and returns it as a string, including the newline character
name1 = gets.chomp

puts "Hello #{name1}!" # now added chomp to remove the newline character

# p is a method that shows a more “raw” version of an object.
p 'Ruby Is Cool'

# there is anothet method, pp means preety printing
# This is like p, but it prints big hashes & arrays in a nicer way.

pp [1, 2, 3, 4, 5]
pp({ name: 'John', age: 30, city: 'New York' })

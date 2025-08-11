# Given the following expression, how would you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

names= person.select {|key, value| key == :name}
puts "Names:"
p names

p person[:name]

# another little exercise
# What method could you use to find out if a Hash contains a specific value in it?
# Write a program that verifies that the value is within the hash.

if person.has_value?('Bob')
  puts "Bob is one of the values in the person hash."
else
  puts "Bob is not one of the values in the person hash."
end



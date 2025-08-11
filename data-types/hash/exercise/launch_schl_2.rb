# Given the following expression, how would you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

names= person.select {|key, value| key == :name}
puts "Names:"
p names

p person[:name]

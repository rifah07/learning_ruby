# create a hash
person = {name: "Alice", age: 24, city: "California"}

puts "Check if key exist"
puts person.key?(:name)
puts person.key?(:country)

puts "Check if value exist"
puts person.value?("Alice")
puts person.value?("New York")
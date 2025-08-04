# In Ruby, key? is a Hash method that checks whether a specific key exists in the hash.
# It returns a boolean value (true or false).

# create a hash
person = {name: "Alice", age: 24, city: "California"}

puts "Check if key exist"
puts person.key?(:name)
puts person.key?(:country)

puts "Check if value exist"
puts person.value?("Alice")
puts person.value?("New York")

# With string keys
scores= {"math" => 95, "science" => 94, "english" => 96}
puts "Check if key exist in scores"
puts scores.key?("math")
puts scores.key?("history")
puts "Check if value exist in scores"
puts scores.value?(95)
puts scores.value?(100)
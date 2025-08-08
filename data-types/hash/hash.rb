# In Ruby, key? is a Hash method that checks whether a specific key exists in the hash.
# It returns a boolean value (true or false). ex: hash.key?(key_to_check)

# create a hash
# A hash in Ruby is a dictionary-like collection of key-value pairs where each unique key maps to a specific value.
# Hash objects are similar to arrays but use arbitrary keys rather than ordered indices for accessing values
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

# Ruby provides several equivalent methods for checking key existence:

puts "Examples of key existence methods in hash"
hash = { a: 1, b: 2 }

# All of these do the same thing:
hash.key?(:a)      # => true
hash.has_key?(:a)  # => true (alias)
hash.include?(:a)  # => true (alias)
hash.member?(:a)   # => true (alias)
# These methods are interchangeable, and you can use any of them based on your preference.
# In arrays, the indices are not interchangeable.
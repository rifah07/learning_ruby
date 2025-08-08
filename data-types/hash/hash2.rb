# Ruby hashes store data as associative arrays where keys can be any hashable object (strings, symbols, integers, etc.)
# and values can be any Ruby object. Unlike arrays which use numeric indices,
# hashes allow you to look up values using meaningful keys, making them ideal for representing structured data

# Hashes maintain insertion order in modern Ruby versions, meaning they preserve the sequence
# in which key-value pairs were added.
# When accessing a key that doesn't exist, Ruby returns nil by default.

# There are two main syntaxes for creating hashes:
# Traditional syntax using the "hash rocket" (=>):
old_syntax = { "name" => "Alice", "age" => 30 }


# Modern syntax for symbol keys:
person = { name: "Alice", age: 30 }
# Both syntaxes are valid, but the modern syntax is more concise and preferred for symbol keys.

# another example of hash with hash rocket: =>
my_hash = {
  "a random word" => "ahoy",
  "Dorothy's math test score" => 94,
  "an array" => [1, 2, 3],
  "an empty hash within a hash" => {}
}
puts my_hash
# another way to create an empty hash
my_hash = Hash.new
puts my_hash               #=> {}

# another way to create a hash with default values
shoes = {
  "summer" => "sandals",
  "winter" => "boots"
}

puts shoes["summer"]   #=> "sandals"


# Hashes are mutable, allowing you to add, modify, and delete key-value pairs after creation.
# They support various methods for iteration, merging, and manipulation,
# making them versatile data structures for organizing related information.

# The Ruby hash implementation requires keys to be hashable objects that respond to the
# hash and eql? methods, ensuring efficient storage and retrieval

# Ruby hashes store data as associative arrays where keys can be any hashable object (strings, symbols, integers, etc.)
# and values can be any Ruby object. Unlike arrays which use numeric indices,
# hashes allow you to look up values using meaningful keys, making them ideal for representing structured data

# Hashes maintain insertion order in modern Ruby versions, meaning they preserve the sequence
# in which key-value pairs were added.
# When accessing a key that doesn't exist, Ruby returns nil by default.

# There are two main syntaxes for creating hashes:
# Traditional syntax using the "hash rocket" (=>):


# Modern syntax for symbol keys:
# Both syntaxes are valid, but the modern syntax is more concise and preferred for symbol keys.

# another example of hash with hash rocket: =>
my_hash = {
  'a random word' => 'ahoy',
  "Dorothy's math test score" => 94,
  'an array' => [1, 2, 3],
  'an empty hash within a hash' => {}
}
print 'Check my_hash: '
p my_hash
# another way to create an empty hash
my_hash = {}
print 'Check empty hash: '
puts my_hash #=> {}

# another way to create an empty hash
my_hash = {}
print 'Check empty hash: '
p my_hash #=> {}

# another way to create a hash with default values
shoes = {
  'summer' => 'sandals',
  'winter' => 'boots'
}
print 'Check shoes hash: '
puts shoes['summer'] #=> "sandals"
print 'Check shoes hash for a non-existing key: '
puts shoes['autumn'] #=> nil

# To provide a default value for missing keys, you can use:
shoes = Hash.new('not found')
print 'Check shoes hash with default value: '
puts shoes['spring'] #=> "not found"

# Sometimes, this behavior can be problematic for you if silently
# returning a nil value could potentially wreak havoc in your program.
# Luckily, hashes have a fetch method that will raise an error when you try to access a key that is not in your hash.

print "Using fetch method to access a key: #{shoes.fetch('autumn', 'this is blank')}\n"


# Hashes are mutable, allowing you to add, modify, and delete key-value pairs after creation.
# They support various methods for iteration, merging, and manipulation,
# making them versatile data structures for organizing related information.

# The Ruby hash implementation requires keys to be hashable objects that respond to the
# hash and eql? methods, ensuring efficient storage and retrieval

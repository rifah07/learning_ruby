#One of the magical properties of methods that allows to write very concise code is 
# being able to chain methods together. This can be done using Ruby’s built-in methods
# or with methods that you create. -the odin project

phrase = ["be", "to", "not", "or", "be", "to"]

puts phrase.reverse.join(" ").capitalize
#=> "To be or not to be"

# In this example, we are using three methods:
# - reverse: reverses the order of the elements in the array
# - join: combines the elements of the array into a single string, with a space in between each element
# - capitalize: capitalizes the first letter of the string

# another method
p "hi there".length.to_s      # returns "8" - a String
p 8

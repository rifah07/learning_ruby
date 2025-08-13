#One of the magical properties of methods that allows to write very concise code is 
# being able to chain methods together. This can be done using Ruby’s built-in methods
## or with methods that you create. -the odin project

phrase = ["be", "to", "not", "or", "be", "to"]

puts phrase.reverse.join(" ").capitalize
#=> "To be or not to be"

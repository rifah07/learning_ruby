=begin
What if the block you want to pass to a method requires more logic
than can fit on one line? It starts to become less readable and looks unwieldy.
For multi-line blocks, the commonly accepted best practice is to change up the syntax to use do...end instead of {...}
  - The Odin project
=end

flowers = ["rose", "lily", "tulip", "daisy", "orchid", "sunflower"]

flowers.each {|flower| puts "I love #{flower}!" if flower == "tulip"; puts "I like #{flower}." unless flower == "tulip"}

puts "With do...end"
flowers.each do |flower|
  if flower == "tulip"
    puts "I love #{flower}!"
  else
    puts "I like #{flower}."
  end
end

=begin
each also works for hashes with a bit of added functionality. By default, each iteration 
will yield both the key and value individually or together (as an array) 
to the block depending on how you define your block variable
=end

my_hash = { "one" => 1, "two" => 2 }

my_hash.each { |key, value| puts "#{key} is #{value}" }

puts "Hash with pair"
my_hash.each { |pair| puts "the pair is #{pair}" }



# there is difference between puts inside each
# outside puts prints the same array regardless of what happens inside
flowers.each { |flower| puts flower.upcase }
puts flowers.each { |flower| flower.upcase }


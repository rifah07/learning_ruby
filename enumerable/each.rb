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
=begin

def take_block(&block)
  block.call
end

take_block do
  puts "Block being called in the method!"
end 
=end

# The ampersand (&) in the method definition tells us that the argument is a block. 

def take_block(number, &block)
  block.call(number)
end

number = 42
take_block(number) do |num|
  puts "Block being called in the method! #{num}"
end
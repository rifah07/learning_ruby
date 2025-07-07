puts "string" == "string"  

puts :symbol == :symbol


# object_id for symbols is the same for the same symbol
puts :symbol.object_id == :symbol.object_id 

# object_id for strings is different even if the content is the same
puts "string".object_id == "string".object_id 

# Symbols are immutable and unique, so their object_id remains constant
puts :symbol.object_id == :symbol.object_id   

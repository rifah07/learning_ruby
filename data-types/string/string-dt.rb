word1= "Assalamu Alaikum"
word2= "everyone"

sentence1= word1 + " " + word2 + "!"

#Concatenation

sentence1= word1 + " " + word2 + "!"



puts "Concatenations in different ways:"
puts "Concatenation using + operator:"
puts sentence1
puts ""

sentence2= word1 << " " << word2 << "!"
puts "Using << operator:"
puts sentence2
puts "word1 after << operator: #{word1}"
puts ""

word3= "Assalamu Alaikum"

sentence3= word3.concat(" ",word2, "!")
puts "Using concat method:"
puts sentence3
puts "word3 after concat method: #{word3}"
puts ""

puts "Note: The << operator".concat(" and concat method modify the original string, ").concat(" while the + operator creates a new string without modifying the original strings.")
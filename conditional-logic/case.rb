grade = 'A'

case grade
when 'A'
  puts "You're a genius"
  5_000_000
when 'D'
  puts 'Better luck next time'
  false
else
  puts "'YOU SHALL NOT PASS!' -Gandalf"
  true
end

# You can also save the result of a case statement into a variable

answer = case grade
         when 'A'
           5_000_000
         when 'D'
           false
         else
           true
         end

puts answer



# There's a second form of the case statement that doesn't take an argument.
# But this only prints last assigned value not the statement as before

answer = if grade == 'A'
           5_000_000
         else
           !(grade == 'D')
         end

puts answer

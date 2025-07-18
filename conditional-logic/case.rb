grade = 'A'

case grade
when 'A'
  puts "You're a genius"
  future_bank_account_balance = 5_000_000
when 'D'
  puts "Better luck next time"
  can_i_retire_soon = false
else
  puts "'YOU SHALL NOT PASS!' -Gandalf"
  fml = true
end 

# You can also save the result of a case statement into a variable

answer = case grade
when 'A'
  "You're a genius"
  future_bank_account_balance = 5_000_000
when 'D'
  "Better luck next time"
  can_i_retire_soon = false
else
  "'YOU SHALL NOT PASS!' -Gandalf"
  fml = true
end

puts answer



# There's a second form of the case statement that doesn't take an argument. 
# But this only prints last assigned value not the statement as before

answer = case
when grade == 'A'
  "You're a genius"
  future_bank_account_balance = 5_000_000
when grade == 'D'
  "Better luck next time"
  can_i_retire_soon = false
else
  "'YOU SHALL NOT PASS!' -Gandalf"
  fml = true
end

puts answer
=begin
 if 1 < 2
  puts "Hot diggity, 1 is less than 2!"
end
=end

# the above block can be written as a one-liner
# puts "Hot diggity damn, 1 is less than 2" if 1 < 2


=begin
attack_by_land = false
attack_by_sea = false

if attack_by_land == true
  puts "release the goat"
elsif attack_by_sea == true
  puts "release the shark"
else
  puts "release Kevin the octopus"
end
=end

grade = 'F'

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

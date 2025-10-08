# Function to find the majority frequency group in a string
def majority_frequency_group(s)
  # Step 1: Convert the string to an array of characters
  chars = s.chars
  puts "Characters: #{chars.inspect}" # Use inspect to see the internal structure and data of Ruby objects

  # Step 2: Count frequencies using tally (Ruby 2.7+ method)
  freq = chars.tally
  puts "freq = #{freq.inspect}"

end

majority_frequency_group("kitty")
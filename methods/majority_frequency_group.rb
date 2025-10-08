# Function to find the majority frequency group in a string
def majority_frequency_group(s)
  # Step 1: Convert the string to an array of characters
  chars = s.chars
  puts "Characters: #{chars.inspect}" # Use inspect to see the internal structure and data of Ruby objects

  # Step 2: Count frequencies using tally (Ruby 2.7+ method)
  freq = chars.tally
  puts "freq = #{freq.inspect}"

  # Step 3: Group [char, freq] pairs by freq value
  grouped = freq.group_by {|char, count| count}
  puts "grouped = #{grouped.inspect}"

  # Step 4: Sort groups by freq ascending
  sorted = grouped.sort
  puts "sorted = #{sorted.inspect}"

  # Step 5: Sort by group size (number of distinct chars) ascending
  sorted_by_size = sorted.sort_by {|k, arr| arr.size}
  puts "sorted_by_size = #{sorted_by_size.inspect}"
end

majority_frequency_group("kitty")
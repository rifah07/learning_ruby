# Function to find the majority frequency group in a string
def majority_frequency_group(s)
  # Step 1: Convert the string to an array of characters
  chars = s.chars
  puts "Characters: #{chars.inspect}" # Use inspect to see the internal structure and data of Ruby objects

  # Step 2: Count frequencies using tally (Ruby 2.7+ method)
  freq = chars.tally
  puts "freq = #{freq.inspect}"

  # Step 3: Group [char, freq] pairs by freq value
  grouped = freq.group_by { |_char, count| count }
  puts "grouped = #{grouped.inspect}"

  # Step 4: Sort groups by freq ascending
  sorted = grouped.sort
  puts "sorted = #{sorted.inspect}"

  # Step 5: Sort by group size (number of distinct chars) ascending
  sorted_by_size = sorted.sort_by { |_k, arr| arr.size }
  puts "sorted_by_size = #{sorted_by_size.inspect}"

  # Step 6: Select majority group (largest size, break ties with largest freq)
  majority_group = sorted_by_size.last
  puts "majority_group = #{majority_group.inspect}"

  # Step 7: Extract chars from [char, freq] pairs
  result_chart = majority_group.last.map(&:first)
  puts "result_chart = #{result_chart.inspect}"

  #   1. majority_group is a pair: [frequency, pairs_array]
  #   Example: [3, [["a", 3], ["b", 3]]]
  #   2. .last gives you the pairs array (second element):
  #     majority_group.last → [["a", 3], ["b", 3]]
  #   3. .map(&:first) is Ruby shorthand for extracting the first element of each
  #       little pair (the character), instead of writing .map { |pair| pair.first }.
  #     For [["a", 3], ["b", 3]], this gets ["a", "b"].

  # Step 8: Join characters to string
  final = result_chart.join
  puts "final = #{final.inspect}"

  final
end

puts "Final Result = #{majority_frequency_group('kitty')}"

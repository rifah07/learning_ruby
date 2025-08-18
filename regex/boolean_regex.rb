def has_a_b?(string)
  if string =~ /b/
    puts "Found a 'b'!"
  else
    puts "No 'b' found."
  end
end

has_a_b?("powerball")
has_a_b?("powerful")

# On top of the =~ operator, we can use the match method to perform regex comparisons as well.
# This method returns a MatchData object that describes the match or nil if there is no match.

def has_a_b_2?(string)
  if /b/.match(string)
    puts "Found a 'b'!"
  else
    puts "No 'b' found."
  end
end

has_a_b_2?("powerball")
has_a_b_2?("powerful")
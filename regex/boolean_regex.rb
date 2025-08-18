def has_a_b?(string)
  if string =~ /b/
    puts "Found a 'b'!"
  else
    puts "No 'b' found."
  end
end

has_a_b?("powerball")
has_a_b?("powerful")
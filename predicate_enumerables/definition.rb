=begin
A predicate method is indicated by a question mark (?) at the end of the method name and returns either true or false
  - The Odin Project
=end

[2, 4, 6].all? { |n| n.even? }  # => true (all are even)
[1, 2, 4].all? { |n| n.even? }  # => false (1 is odd)

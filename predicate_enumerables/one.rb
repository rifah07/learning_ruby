=begin
Ruby has methods to check whether all, any, or none of the elements in an array match a condition.
But what if you need exactly one match - no more, no less?
Ruby has you covered with the #one? method,
which returns true if the block evaluates to true for exactly one element.
  - The Odin Project
=end

flowers = ["rose", "lily", "daisy"]

puts flowers.one? { |flower| flower.length == 5 }
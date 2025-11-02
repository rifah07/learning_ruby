# The tally method is provided by the Enumerable module in Ruby (available since Ruby 2.7).
# It counts how many times each element appears in a collection and returns a hash.
# The keys of the hash are the unique elements, and the values are their respective counts.

# Example usage:
array = %w[a b b a c d d d e]

# Using tally to count occurrences of each element:
counts = array.tally
# counts is now {"a"=>2, "b"=>2, "c"=>1, "d"=>3, "e"=>1}

# This is much simpler and cleaner than the previous ways to count elements,
# like using group_by or manually building a frequency hash.

# Another example with hashes in an array:
hashes = [{ name: "Meagan" }, { name: "Meagan" }, { name: "Lauren" }]

# tally returns counts of each hash:
hash_counts = hashes.tally
# => {{:name=>"Meagan"}=>2, {:name=>"Lauren"}=>1}

# To modify the result for better readability, we can map it:
result = hash_counts.map { |k, v| k.merge(count: v) }
# => [{:name=>"Meagan", :count=>2}, {:name=>"Lauren", :count=>1}]

# This shows the number of times each unique hash appears in the array.

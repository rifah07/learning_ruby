# Use each and inject to convert an array into a hash
=begin
Given a two-dimensional array (i.e. an array of two-element arrays), convert it into a hash
in the keys and values are the first and second elements, respectively, of each sub-array.
=end

# let's use each first
data_arr = [['dog', 'Fido'], ['cat', 'Whiskers'], ['fish', 'Fluffy']]

data_hash = {}

data_arr.each do |d|
  data_hash[d[0]] = d[1]
end
print "2D Array: "
p data_arr
print "Hash: "
p data_hash
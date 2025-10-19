# Use each and inject to convert an array into a hash
# Given a two-dimensional array (i.e. an array of two-element arrays), convert it into a hash
# in the keys and values are the first and second elements, respectively, of each sub-array.

# let's use each first
data_arr = [%w[dog Fido], %w[cat Whiskers], %w[fish Fluffy]]

data_hash = {}

data_arr.each do |d|
  data_hash[d[0]] = d[1]
end
print '2D Array: '
p data_arr
print 'Hash: '
p data_hash


# let's use inject now
data_hash1 = data_arr.each_with_object({}) do |d, hsh|
  hsh[d[0]] = d[1]
end

print 'Hash using inject: '
p data_hash1

# here is another way with inject
data_hash2 = data_arr.inject({}) do |hsh, d|
  hsh.merge({ d[0] => d[1] }) #  this is slower computationally
end

print 'Hash using inject (using merge) : '
p data_hash2

# Convert the result of the above exercise back into an array,
# but with the first and second elements' positions swapped from the original data_arr

data_arr2 = data_hash.inject([]) do |arr, v|
  arr << [v[1], v[0]]
end

print '2D Array with positions swapped: '
p data_arr2

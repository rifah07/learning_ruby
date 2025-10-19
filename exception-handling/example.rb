names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  puts "#{name}'s name has #{name.length} letters in it."
rescue StandardError
  puts 'Something went wrong!'
end

# for 'nil' exception handles as it is nit a name

# Procs are blocks that are wrapped in a proc object

# talk = Proc.new do
#   puts "I am talking."
# end
#
# talk.call

# Procs can also take arguments if specified.

talk = proc do |name|
  puts "I am talking to #{name}"
end

talk.call 'Bob'

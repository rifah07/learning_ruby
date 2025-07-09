#Procs are blocks that are wrapped in a proc object 

=begin
talk = Proc.new do
  puts "I am talking."
end

talk.call
=end

#Procs can also take arguments if specified.

talk = Proc.new do |name|
  puts "I am talking to #{name}"
end

talk.call "Bob"
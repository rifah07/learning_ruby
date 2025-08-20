x = [1, 2, 3, 4, 5]
x.each do |a|
  puts "#{a + 1}"
end

=begin
What if the block you want to pass to a method requires more logic than can fit on one line?
It starts to become less readable and looks unwieldy.
For multi-line blocks, the commonly accepted best practice is to change up the syntax to use do...end instead of {...}
- The Odin project
=end
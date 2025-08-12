def my_name
  "Rifah Sajida"
end

puts my_name

=begin
- 'def' is a built-in keyword that tells Ruby that this is the start of a method definition.
-'' my_name' is the name of your new method. You can name your methods almost anything you want,
 but there are some constraints and conventions.

- "Rifah Sajida" is the code inside the method body. All of the logic for your method is contained in the indented lines
 of the method body. This particular method returns a string when the method is called.

- 'end' is a built-in keyword that tells Ruby that this is the end of the method definition.
To call the method, you need to use its name, as shown in the last line of the example.
=end

# It’s good practice to start the method name with a lower-case character,
# because names that start with capital letters are constants in Ruby.

=begin
Here are some things you are not allowed to do with your method names:

- You cannot name your method one of Ruby’s approximately 40 reserved words, such as end, while, or for.
- You cannot use any symbols other than _, ?, !, and =.
- You cannot use ?, !, or = anywhere other than at the end of the name.
- You cannot begin a method name with a number.
=end

=begin
Examples of valid and invalid method names:
method_name      # valid
_name_of_method  # valid
1_method_name    # invalid
method_27        # valid
method?_name     # invalid
method_name!     # valid
begin            # invalid (Ruby reserved word)
begin_count      # valid
=end

# Method with parameter:
def greet(name)
  "Hello, " + name + "!"
end

puts greet("Rifah")

# Default parameters

def greet(name = "stranger")
  "Hello, " + name + "!"
end

puts greet("Jane") #=> Hello, Jane!
puts greet #=> Hello, stranger!


=begin
When we define a class, we need to focus in 2 things
state and behaviours
State refers to the data associated to an individual object (which are tracked by instance variables).
Behaviors are what objects are capable of doing.
Instance variables keep track of state, and instance methods expose behavior for objects
 - The Launch School E-Book
=end

class Document
  def initialize(name, content)
    @name = name #instance variable because '@'
    @content = content #instance variable because '@'
    puts "This object was initialized"
  end
end

pdf = Document.new("John", "Hello World")
# The initialize method gets called every time you create a new object.
# Itr is an instance (special) method special method that builds the object when a new object is instantiated.
# It gets triggered by the new class method.
# Here @name, @content are instance variables
# Instance variables are responsible for keeping track of information about the state of an object

=begin
Instance variable according to The Launch School:
It is a variable that exists as long as the object instance exists and
it is one of the ways we tie data to objects. It does not "die" after the initialize method is run.
It "lives on", to be referenced, until the object instance is destroyed
=end

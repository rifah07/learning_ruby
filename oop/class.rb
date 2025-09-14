=begin
 Ruby defines the attributes and behaviors of its objects in classes.
 You can think of classes as basic outlines of what an object should be made of and
  what it should be able to do.  -The Odin Project
=end

# Define class
class GoodHorse
end

# create an object of the class
arthur = GoodHorse.new

=begin
If our program keeps track of data about entities and performs operations on that data,
it makes sense to combine the data and the functionality into a single entity.
That's what object-oriented programming is all about.
-The Launch School E-Book
=end

=begin
Principle of combining data and the operations relevant to that data encapsulation.
Encapsulation is about bundling state (data) and behavior (operations) to form an object.
-The Launch School E-Book
=end

=begin
In most OOP languages, encapsulation has a broader purpose.
It also refers to restricting access to the state and certain behaviors;
an object only exposes the data and behaviors that other parts of the application need to work.
In other words, objects expose a public interface for interacting with other objects and
keep their implementation details hidden.
Thus, other objects can't change the data of an object without going through the proper interface.
- The Launch School E-Book
=end

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

# Q/A
=begin
If we're the only one using our classes, why would we still use encapsulation?
Does it really make sense to "hide" data from ourselves?

=> Yes, it still makes sense to use encapsulation even if you're the only one
using your classes. Encapsulation helps keep your code organized and protects
your data from unintended changes, making it easier to maintain and debug.
By hiding the internal details and exposing only what's necessary through
a clear interface, you reduce the chance of accidentally misusing or corrupting the data,
which benefits you as the developer in the long run.
=end

=begin
Imagine a video game where users manage a farm, and you’ve defined a Plant class.
What are some possible subclasses of Plant? What kinds of behaviors might the Plant class define?

=> "Mango Plant" and "Rose Plant" can be good example as subclasses.
That’s a great example of how subclasses can represent more detailed versions of a general class.
For behaviors, think about actions or things a plant can do, such as grow,
photosynthesize, or bloom. These behaviors capture what a plant does,
which fits well with what a class should define.
=end

# Note:
# There are a few things that are not objects in Ruby: methods, blocks, and variables are three that stand out.


# In OOP languages, composition and aggregation are design principles
# used to establish relationships between classes.

# Composition is a relationship where an object -- often called the container --
# contains one or more objects of other classes as part of its state.
# In composition, the contained -- composed -- objects are tied directly to the container.
# That is, the lifetimes of the container and composed objects are dependent on each other.
# Composed objects are created when the container is created and destroyed when the container is destroyed.
# - The Launch School

# In Ruby, composition is typically implemented using instance variables
# that are initialized via the constructor of the class.

class Engine
  def start
    puts 'Engine Starting. Boom Boom!!!'
  end
end

class Car
  def initialize
    @engine = Engine.new
  end

  def start
    @engine.start
  end
end

my_car = Car.new
my_car.start

# According to the Launch School:
# A container has a has-a relationship to its composed objects.
# That is, the container "has a" composed object.

# Ruby OOP Concepts Guide

## What is a class?

A class is a blueprint or template for creating objects in Ruby. It defines the structure and behavior that objects of that class will have. Classes encapsulate data (attributes) and methods (behaviors) that operate on that data.

```ruby
class Dog
  def initialize(name, breed)
    @name = name
    @breed = breed
  end
  
  def bark
    puts "#{@name} says Woof!"
  end
end

my_dog = Dog.new("Buddy", "Golden Retriever")
my_dog.bark  # Output: Buddy says Woof!
```

## What are getters and setters?

Getters and setters are methods that allow you to read (get) and modify (set) instance variables from outside the class. Ruby provides convenient shortcuts to define them:

**Manual approach:**
```ruby
class Person
  def name          # getter
    @name
  end
  
  def name=(value)  # setter
    @name = value
  end
end
```

**Ruby shortcuts:**
```ruby
class Person
  attr_reader :name      # creates getter only
  attr_writer :age       # creates setter only
  attr_accessor :email   # creates both getter and setter
end

person = Person.new
person.email = "test@example.com"
puts person.email  # Output: test@example.com
```

## What is inheritance?

Inheritance is a mechanism where a class (child/subclass) inherits attributes and methods from another class (parent/superclass). This promotes code reuse and establishes an "is-a" relationship between classes.

```ruby
class Animal
  def eat
    puts "Eating food"
  end
end

class Cat < Animal  # Cat inherits from Animal
  def meow
    puts "Meow!"
  end
end

cat = Cat.new
cat.eat   # Inherited method - Output: Eating food
cat.meow  # Own method - Output: Meow!
```

## What is a scope?

Scope determines the visibility and accessibility of variables, methods, and constants in different parts of your code. It defines where in your program a particular variable or method can be accessed.

Ruby has several scope types:
- **Local scope**: Variables defined within methods or blocks
- **Instance scope**: Instance variables (`@variable`) accessible within an object
- **Class scope**: Class variables (`@@variable`) shared across all instances
- **Global scope**: Global variables (`$variable`) accessible everywhere

## When is a new scope defined?

A new scope is created in the following situations:

1. **Method definitions**: Each method has its own local scope
```ruby
def my_method
  local_var = "I'm local to this method"
end
```

2. **Class and module definitions**: Classes and modules create new scope
```ruby
class MyClass
  # new scope
end
```

3. **Blocks with specific methods**: `define_method`, `class_eval`, `instance_eval`
```ruby
[1, 2, 3].each do |num|
  # new scope for block variables
end
```

**Note**: Regular blocks (`do...end` or `{...}`) create a "semi-permeable" scope - they can access outer variables but create new local variables if assigned.

## What is the purpose of instance variables?

Instance variables store data that belongs to a specific instance (object) of a class. They maintain the state of an object and persist throughout the object's lifetime.

**Key characteristics:**
- Prefixed with `@` symbol
- Unique to each object instance
- Not shared between different objects
- Accessible across all instance methods within the class

```ruby
class BankAccount
  def initialize(balance)
    @balance = balance  # instance variable
  end
  
  def deposit(amount)
    @balance += amount  # accessing instance variable
  end
  
  def show_balance
    puts "Balance: $#{@balance}"
  end
end

account1 = BankAccount.new(1000)
account2 = BankAccount.new(500)

account1.deposit(200)
account1.show_balance  # Output: Balance: $1200
account2.show_balance  # Output: Balance: $500
```

## What is the difference between class variables and instance variables?

| Feature | Instance Variables (`@variable`) | Class Variables (`@@variable`) |
|---------|----------------------------------|--------------------------------|
| **Prefix** | Single `@` | Double `@@` |
| **Scope** | Belongs to a specific object | Shared across all instances of the class |
| **Uniqueness** | Each object has its own copy | Only one copy exists for the entire class |
| **Access** | Accessible within instance methods | Accessible in both class and instance methods |
| **Use case** | Store object-specific data | Store data shared by all objects |

**Example:**
```ruby
class Counter
  @@total_count = 0  # class variable (shared)
  
  def initialize(name)
    @name = name     # instance variable (unique to each object)
    @@total_count += 1
  end
  
  def self.total
    @@total_count
  end
  
  def name
    @name
  end
end

counter1 = Counter.new("First")
counter2 = Counter.new("Second")
counter3 = Counter.new("Third")

puts counter1.name        # Output: First (unique to counter1)
puts counter2.name        # Output: Second (unique to counter2)
puts Counter.total        # Output: 3 (shared across all instances)
```

**Important note**: Class variables are shared across the class hierarchy, including subclasses, which can lead to unexpected behavior. Consider using class instance variables as an alternative when inheritance is involved.
# Ruby Object-Oriented Programming

## Introduction

Ruby defines the attributes and behaviors of its objects in classes.  
You can think of classes as basic outlines of what an object should be made of and what it should be able to do.  
— *The Odin Project*

---

## Definitions

> **Object-Oriented Programming (OOP):**  
> If our program keeps track of data about entities and performs operations on that data,  
> it makes sense to combine the data and the functionality into a single entity.  
> That's what object-oriented programming is all about.  
> — *The Launch School E-Book*

> **Encapsulation:**  
> Principle of combining data and the operations relevant to that data.  
> Encapsulation is about bundling state (data) and behavior (operations) to form an object.  
> — *The Launch School E-Book*

> In most OOP languages, encapsulation has a broader purpose:  
> It also refers to restricting access to the state and certain behaviors;  
> An object only exposes the data and behaviors that other parts of the application need to work.  
> Objects expose a public interface for interacting with other objects and keep their implementation details hidden.  
> Thus, other objects can't change the data of an object without going through the proper interface.  
> — *The Launch School E-Book*

---

## Code Examples

Define class:  

    class GoodHorse  
    end

    Create an object of the class:  
    arthur = GoodHorse.new


---

## Expanded Examples and Concepts

### What Is a Class?

A **class** in Ruby is like a blueprint or template. It defines the **attributes** (data or state) and **behaviors** (methods or actions) that objects created from the class will have.

Example with attributes and behaviors:

    class GoodHorse  
    attr_accessor :name, :color  
    
        def initialize(name, color)  
            @name = name  
            @color = color  
        end  
         
        def run  
            puts "#{name} is running fast!"  
        end  
        
        def eat(food)  
            puts "#{name} is eating #{food}."   
        end  
    end  
    
    arthur = GoodHorse.new("Arthur", "brown")
    arthur.run
    arthur.eat("hay")


### Why Encapsulation Matters

Encapsulation means keeping an object's **internal state private** and exposing only what is necessary to the outside world through **public methods** (the interface). This:

- Protects data integrity
- Simplifies interaction
- Makes code easier to maintain
- Helps debugging

Example of encapsulation:

    class BankAccount
        def initialize(balance)
            @balance = balance
        end
        
        def deposit(amount)
            @balance += amount if amount > 0
        end
        
        def withdraw(amount)
            if amount <= @balance && amount > 0
                @balance -= amount
            else
                puts "Invalid withdrawal amount"
            end
        end
        
        def balance
            @balance
        end
    end
    
    account = BankAccount.new(1000)
    account.deposit(500)
    puts account.balance # 1500
    account.withdraw(2000) # Invalid withdrawal amount


### Inheritance and Subclasses

Inheritance lets one class **extend or specialize** another class.

    class Plant
        def grow
            puts "The plant is growing."
        end
        
        def photosynthesize
            puts "The plant is making food."
        end
    end
        
    class MangoPlant < Plant
        def bloom
            puts "The mango plant is blooming with flowers."
        end
    end
    
    mango = MangoPlant.new
    mango.grow # Inherited from Plant
    mango.photosynthesize # Inherited from Plant
    mango.bloom # Defined in MangoPlant
---

---

## Polymorphism

Polymorphism in Ruby means different objects can respond to the same method call in their own unique way, even if they’re from different classes. This makes your code flexible and easier to extend or maintain[web:61][web:62][web:64][web:66].

### Example: Inheritance-Based Polymorphism

    class Animal
        def speak
            puts "Some generic sound"
        end
    end
    
    class Dog < Animal
        def speak
            puts "Woof!"
        end
    end
    
    class Cat < Animal
        def speak
            puts "Meow!"
        end
    end
    
    animals = [Dog.new, Cat.new]
    animals.each { |animal| animal.speak }
    
    Output:
    Woof!
    Meow!


Here, both `Dog` and `Cat` respond to the `speak` method but each provides its own behavior.

### Example: Duck Typing Polymorphism

    class Duck
        def quack
            puts "Quack quack!"
        end
    end
    
    class Person
        def quack
            puts "The person imitates a duck!"
        end
    end
    
    def make_quack(animal)
        animal.quack
    end
    
    make_quack(Duck.new) # Quack quack!
    make_quack(Person.new) # The person imitates a duck!


In Ruby, the method doesn’t care about an object’s class, only that it has the required method—this is called duck typing[web:65][web:66].

---

**Summary:**  
Polymorphism lets you use a common interface to work with different types of objects, keeping your code DRY, extensible, and powerful.

---

---

## Module

A **module** in Ruby is a collection of methods, constants, and sometimes classes, designed for sharing functionality and for namespacing code. Unlike classes, **modules cannot be instantiated**—that is, you can't create an object directly from a module, nor do modules have the `new` method[web:73][web:74][web:77].

### Why use Modules?
- To group related methods and constants together, making your code organized.
- To **share code (mixins)** among multiple classes without using inheritance.
- To provide **namespaces** to avoid naming conflicts in larger programs.

### Example: Defining and Including a Module

    module Greetings
        def say_hello
            puts "Hello!"
        end
    
        def say_bye
            puts "Goodbye!"
        end
    end
    
    class FriendlyPerson
        include Greetings
    end
    
    person = FriendlyPerson.new
    person.say_hello # Output: Hello!
    person.say_bye # Output: Goodbye!


In this example, the `Greetings` module is included in the `FriendlyPerson` class, giving all `FriendlyPerson` instances access to the module’s methods.

### Namespacing with Modules

Modules can also act as **namespaces** to organize related classes and constants, avoiding conflicts:

    module MathTools
        PI = 3.14159
        
        class Circle
            def self.area(radius)
                PI * radius * radius
            end
        end
    end
    
    puts MathTools::Circle.area(2) # Output: 12.56636

### Summary

- **Modules** allow code reuse and organization without “is-a” relationships.
- Use `include` (to add as instance methods) or `extend` (as class methods) to share module code with classes.
- Good for “mixing in” abilities or grouping shared utility logic[web:74][web:77].

---

## Q & A

### Q: If we're the only one using our classes, why would we still use encapsulation?
Does it really make sense to "hide" data from ourselves?

**A:**  
Yes, it still makes sense. Encapsulation helps keep your code organized and protects your data from unintended changes, making it easier to maintain and debug.  
By hiding the internal details and exposing only what's necessary through a clear interface, you reduce the chance of accidentally misusing or corrupting the data, which benefits you as the developer in the long run.

---

### Q: Imagine a video game where users manage a farm, and you’ve defined a `Plant` class.
What are some possible subclasses of `Plant`? What kinds of behaviors might the `Plant` class define?

**A:**  
Possible subclasses could be `"Mango Plant"` and `"Rose Plant"`. Subclasses represent more detailed versions of a general class.  
Behavior examples include growing, photosynthesizing, and blooming—these capture what a plant does, fitting well with what a class should define.

---

## Notes

- There are a few things that are **not objects** in Ruby:  
  methods, blocks, and variables are three that stand out.

---

## Keep the Fire Burning 🔥

Remember, mastering Ruby and object-oriented programming is a journey, not a race. Every step you take, every bug you fix, and every line of code you write is a victory that builds your skills stronger and sharper. Embrace challenges as opportunities to grow and keep your curiosity alive.

The magic happens when you persist — push through confusing moments, celebrate your wins, and never stop learning. You have the power to create amazing software and bring your ideas to life. Stay passionate, stay driven, and let your code shine brighter with every keystroke!

**Keep coding, keep growing, and keep that fire burning — the best is yet to come!** 🚀🔥

Happy coding! 💻✨
---
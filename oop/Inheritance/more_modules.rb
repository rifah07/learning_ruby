# This file explains two main uses of modules in Ruby:
# 1. Namespacing
# 2. Module methods (as containers for general-purpose methods)

# -----------------------------
# 1. MODULES FOR NAMESPACING
# -----------------------------
# Modules can organize similar classes together.
# This helps avoid name conflicts and keep the code clear.

module Mammal
  class Dog
    def speak(sound)
      puts "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      puts "#{name}"
    end
  end
end

# We call these classes using the module name and two colons (::)
tommy = Mammal::Dog.new
tommy.speak("Arf!")
kitty = Mammal::Cat.new
kitty.say_name("Kitty")

# -----------------------------
# 2. MODULES AS CONTAINERS
# -----------------------------
# Modules can also hold methods that don’t fit inside any class.
# These are called "module methods" and can be used directly without creating objects.

module Temperature_Converter
  def self.fahrenheit_to_celsius(num)
    (num - 32) * 5 / 9
  end
end

# You can call the module method directly from the module:
value = Temperature_Converter.fahrenheit_to_celsius(23)
puts value

# Or like this (less common way):
value = Temperature_Converter::fahrenheit_to_celsius(32)
puts value
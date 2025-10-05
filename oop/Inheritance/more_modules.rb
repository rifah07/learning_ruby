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
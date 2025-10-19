# A module allows us to group reusable code into one place.
# We use modules in our classes by using the include method invocation,
# followed by the module name. Modules are also used as a namespace.
#   - The Launch School E-Book



module Speak
  def speak(sound)
    puts sound
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

tomy = GoodDog.new
tomy.speak('Arf!')

toma = HumanBeing.new
toma.speak('Hello')

# This is possible through "mixing in" the module Speak.
# It's as if we copy-pasted the speak method into the GoodDog and HumanBeing classes.

# We can use the ancestors method on any class to find out the method lookup chain.

puts '-------GoodDog Ancsetors----------'
puts GoodDog.ancestors

# Ruby has a distinct lookup path that it follows each time a method is called.
# We used our program from above to see what the method lookup path is for our GoodDog class.

puts '-------HumanBeing Ancsetors--------'
puts HumanBeing.ancestors

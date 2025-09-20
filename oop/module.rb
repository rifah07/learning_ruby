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
tomy.speak("Arf!")

toma = HumanBeing.new
toma.speak("Hello")

=begin
This is possible through "mixing in" the module Speak.
It's as if we copy-pasted the speak method into the GoodDog and HumanBeing classes.
=end

# We can use the ancestors method on any class to find out the method lookup chain.

puts "-------GoodDog Ancsetors----------"
puts GoodDog.ancestors

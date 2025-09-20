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
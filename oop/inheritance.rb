class Plant
  def grow
    puts 'The plant is growing.'
  end

  def photosynthesize
    puts 'The plant is making food.'
  end
end

class MangoPlant < Plant
  def bloom
    puts 'The mango plant is blooming with flowers.'
  end
end

mango = MangoPlant.new
mango.grow # Inherited from Plant
mango.photosynthesize # Inherited from Plant
mango.bloom # Defined in MangoPlant# frozen_string_literal: true

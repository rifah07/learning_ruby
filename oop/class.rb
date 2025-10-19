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

arthur = GoodHorse.new('Arthur', 'brown')
arthur.run
arthur.eat('hay')

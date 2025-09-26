class MyCar
  #attr_accessor :year, :color, :model

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "Speed increase: #{number}"
  end

  def brake(number)
    @current_speed -= number
    puts "You pushed brake and decreased #{number} speed"
  end

  def current_speed
    puts "Your current speed is #{@current_speed} mph"
  end
  def shut_down
    @current_speed = 0
    puts "Now let's park!"
  end
end

rr = MyCar.new(2000, 'Yellow', 'Rolls Royce')
rr.speed_up(17)
rr.current_speed
rr.brake(5)
rr.current_speed
rr.speed_up(10)
rr.current_speed
rr.shut_down
rr.current_speed
class Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def current_direction
    @direction
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def current_speed
    @speed
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new
bike = Bike.new

car.accelerate
bike.accelerate
bike.ring_bell
car.honk_horn
p bike.current_direction
p car.current_direction
car.turn("south")
bike.turn("south")
p bike.current_direction
p car.current_direction
p bike.current_speed
p car.current_speed
car.accelerate
p car.current_speed






class Engine
  def start
    puts "Engine starting..."
  end
end

class Car
  def initialize
    @engine = Engine.new  # Engine instance is created when Car is created
  end

  def start
    @engine.start
  end
end

my_car = Car.new
my_car.start  # Engine is an integral part of Car

# ---

class Passenger
end

class Car
  def initialize(passengers)
    @passengers = passengers  # Passengers are given to the Car at creation
  end
end

# Passengers can exist without Car
passengers = [Passenger.new, Passenger.new]
my_car = Car.new(passengers)

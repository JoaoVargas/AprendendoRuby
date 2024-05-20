class GoodDog
  def initialize
    puts "This object was initialized!"
  end
end

sparky = GoodDog.new        # => "This object was initialized!"

# ---

class GoodDog
  def initialize(name)
    @name = name
  end
end

sparky = GoodDog.new("Sparky")

# ---


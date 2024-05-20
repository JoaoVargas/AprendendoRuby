class GoodDog
  def initialize(name)
    @name = name
  end

  def speak
    "Arf!"
  end
  # def speak
  #   "#{@name} says arf!"
  # end
end

sparky = GoodDog.new("Sparky")
puts sparky.name
# NoMethodError: undefined method `name' for # <GoodDog:0x007f91821239d0 @name="Sparky">

# ---

class GoodDog
  def initialize(name)
    @name = name
  end

  def get_name
    @name
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.get_name

# ---

class GoodDog
  def initialize(name)
    @name = name
  end

  def get_name
    @name
  end

  def set_name=(name)
    @name = name
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.get_name
sparky.set_name = "Spartacus"
puts sparky.get_name

# ---

class GoodDog
  def initialize(name)
    @name = name
  end

  def name # This was renamed from "get_name"
    @name
  end

  def name=(n) # This was renamed from "set_name="
    @name = n
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name # => "Sparky"
sparky.name = "Spartacus"
puts sparky.name # => "Spartacus"

# ---

class GoodDog
  attr_accessor :name
  # attr_accessor :name, :height, :weight

  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name # => "Sparky"
sparky.name = "Spartacus"
puts sparky.name # => "Spartacus"

# ---

class GoodDog
  attr_accessor :name
  # attr_accessor :name, :height, :weight

  def initialize(name)
    @name = name
  end

  def speak
    "#{name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name # => "Sparky"
sparky.name = "Spartacus"
puts sparky.name # => "Spartacus"

# ---

class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{name} says arf!"
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end


  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

end

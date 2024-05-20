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
sparky.speak
# puts sparky.speak # => Arf!

fido = GoodDog.new("Fido")
puts fido.speak # => Arf!

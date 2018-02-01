
class HealthyFoods::Food

  attr_accessor :name, :serving_size, :nutrients

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

end

# food_1("Bananas") = self.new


class HealthyFoods::Food

  attr_accessor :name, :serving_size, :nutrients

  @@all = []

  def initialize(name)
    @name = name
    @@all << self.new
  end

  def self.all
    @@all
  end

end

food_1("Bananas") = Food.new

food_2("Carrots") = Food.new

food_3("Beans") = Food.new

food_4("Chicken") = Food.new

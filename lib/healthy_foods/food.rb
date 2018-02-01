
class HealthyFoods::Food

  attr_accessor :name, :serving_size, :nutrients

  @@all = []

  def self.all
    @@all
  end

end

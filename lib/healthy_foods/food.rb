
class HealthyFoods::Food

  attr_accessor :name, :serving_size, :general_info, :calories, :url

  @@all = []

  def initialize(food_hash)
    food_hash.each {|attribute, value| self.send(("#{attribute}="), value)}
    @@all << self
  end

  def self.find(id)
    @@all[id.to_i - 1]
  end

  def self.create_from_collection(foods_array)
    foods_array.each do |food|
          # puts "Got here"
          # binding.pry
      HealthyFoods::Food.new(food)
    end
  end

  def add_food_attributes(attributes_hash)
    attributes_hash.each {|key, value| self.send(("#{key}="), value)}
    self
  end

  def self.all
    @@all
  end

end

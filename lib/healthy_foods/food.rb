
class HealthyFoods::Food

  attr_accessor :name, :serving_size, :nutrients, :calories, :url

  @@all = []

  def initialize(food_hash)
    food_hash.each {|attribute, value| self.send(("#{attribute}=", value))}
    @@all << self
  end

  def self.list

    food_1 = self.new
    food_1.name = "Bananas"
    food_1.serving_size = "118 grams"
    food_1.nutrients = ["vitamin B6", "manganese", "vitamin C", "potassium", "fiber", "copper", "biotin"]
    food_1.calories = "105"

    food_2 = self.new
    food_2.name = "Carrots"
    food_2.serving_size = "122 grams"
    food_2.nutrients = ["vitamin A", "vitamin K", "vitamin B6", "manganese", "vitamin C", "potassium", "fiber", "copper", "biotin"]
    food_2.calories = "50"

    food_3 = self.new
    food_3.name = "Black Beans"
    food_3.serving_size = "172 grams"
    food_3.nutrients = ["molybdenum", "folate", "vitamin B1", "manganese", "vitamin C", "potassium", "fiber", "copper", "biotin"]
    food_3.calories = "227"

    food_4 = self.new
    food_4.name = "Chicken"
    food_4.serving_size = "113 grams"
    food_4.nutrients = ["vitamin B3", "protein", "selenium", "vitamin B6", "phosphorous"]
    food_4.calories = "187"

    [food_1, food_2, food_3, food_4]

  end

end




#  FIRST ATTEMPT AT MAKING THIS WORK.  USED A CLASS METHOD AND CLASS VARIABLE.  BUT KEPT GETTING SYNTAX ERROR WHEN TRYING TO ADD NEW INSTANCES TO THE @@all ARRAY.  AM GOING TO USE FOOD.LIST instead (see above).

# @@all = []
#
# def initialize(name)
#   @name = name
#   @@all << self
# end
#
# def self.all
#   @@all
# end



#  DELETED BELOW LINE.  KEPT GETTING THE FOLLOWING ERROR, DIDN'T KNOW HOW TO SOLVE...
#  /Users/jeffreywithers/Development/code/healthy_foods/lib/healthy_foods.rb:3:in `require_relative': /Users/jeffreywithers/Development/code/healthy_foods/lib/healthy_foods/food.rb:19: syntax error, unexpected '=', expecting end-of-input (SyntaxError)
# food_1("Bananas") = Food.new         THE ERROR KEEPS POINTING TO SPOT RIGHT BEFORE 'Food.new'
# food_1("Bananas") = self.new          or RIGHT BEFORE 'self.new'

# TROUBLING CODE LINE IN quest ion...
# food_1("Bananas") = self.new

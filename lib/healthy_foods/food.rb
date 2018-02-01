
class HealthyFoods::Food

  attr_accessor :name, :serving_size, :nutrients

  def self.list
    puts "\n1. Bananas"
    puts "2. Carrots"
    puts "3. Beans"
    puts "4. Chicken"
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

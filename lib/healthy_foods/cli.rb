#The CLI Controller - responsible for User interactions, working with input, etc.

class HealthyFoods::CLI

  def call
    list_foods
    menu
  end

  def list_foods
    puts "Welcome to Healthy Foods!"
    puts "1. Bananas"
    puts "2. Carrots"
    puts "3. Beans"
    puts "4. Chicken"
  end

  def menu
    puts "Please enter the number of the food you'd like to learn more about."
    user_input = gets.strip
  end

end

#The CLI Controller - responsible for User interactions, working with input, etc.

class HealthyFoods::CLI

  def call
    puts "Welcome to Healthy Foods!"
    list_foods
    menu
    goodbye
  end

  def list_foods
    @foods = HealthyFoods::Food.list
  end

  def menu
    user_input = nil
    while user_input != "exit"
      puts "\nPlease enter the number of the food you'd like to learn more about,\n or type 'foods' to see list of foods again,\n or type 'exit' to end program."
      user_input = gets.strip.downcase
      case user_input
        when "1"
          puts "Bananas are yellow"
        when "2"
          puts "Carrots are orange"
        when "3"
          puts "Beans are a variety of colors"
        when "4"
          puts "Chicken is a meat"
        when "foods"
          list_foods
        when "exit"
          puts "Hope you learned something fruitful!"
        else
          puts "Invalid input.  Please type a number, 'foods' or 'exit'."
      end
    end
  end

  def goodbye
    puts "Come back soon to find out more!  Eat those fruits and veggies!"
  end


end # ends Class

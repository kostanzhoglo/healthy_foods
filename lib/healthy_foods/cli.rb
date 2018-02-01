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

      if user_input.to_i > 0
        puts @foods[user_input.to_i - 1]
      elsif user_input == "foods"
          list_foods
      elsif user_input == "exit"
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

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
    user_input = nil
    while user_input != "exit"
      puts "Please enter the number of the food you'd like to learn more about or press exit to end program."
      user_input = gets.strip
      case user_input
        when "1"
          puts "Bananas are yellow"
        when "2"
          puts "Carrots are orange"
        when "3"
          puts "Beans are a variety of colors"
        when "4"
          puts "Chicken is a meat"
      end
    end
  end

end

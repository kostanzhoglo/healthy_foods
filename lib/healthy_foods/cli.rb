#The CLI Controller - responsible for User interactions, working with input, etc.

class HealthyFoods::CLI

  def call
    puts "Welcome to Healthy Foods!"
    make_foods
    list_foods
    add_attributes_to_food
    menu
    goodbye
  end

  def make_foods
    foods_array = HealthyFoods::Scraper.scrape_index_page
    HealthyFoods::Food.create_from_collection(foods_array)
  end

  def list_foods
    # @foods = HealthyFoods::Food.list
    HealthyFoods::Food.all.each.with_index(1) do |food, index|
      puts "#{index}. #{food.name}"
    end
  end

  def add_attributes_to_food
    HealthyFoods::Food.all.each do |food|
      attributes = HealthyFoods::Scraper.scrape_food_page("http://www.whfoods.com/" + food.url)
      food.add_food_attributes(attributes)
    end
  end

  def menu
    user_input = nil
    while user_input != "exit"
      puts "\nPlease enter the number of the food you'd like to learn more about,\n or type 'foods' to see list of foods again,\n or type 'exit' to end program."
      user_input = gets.strip.downcase

      if user_input.to_i > 0 && user_input.to_i <= HealthyFoods::Food.all.length
        food_choice = HealthyFoods::Food.all[user_input.to_i - 1]

        puts "#{food_choice.name.upcase}"
        puts "Serving Size: #{food_choice.serving_size}"
        puts "Calories: #{food_choice.calories}"
        puts "General_info: #{food_choice.general_info}"
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

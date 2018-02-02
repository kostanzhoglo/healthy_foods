
class HealthyFoods::Scraper

  def self.scrape_index_page
    index_page = Nokogiri::HTML(open("http://www.whfoods.com/foodstoc.php"))
    # binding.pry
    food_list = []
    index_page.css(".blist").each do |line|
      line.css("li").each do |food|
        food_name = food.css("a").children.text
        binding.pry
      end
    end
  end

  def self.scrape_food_page(food_url)

  end

end



#  LINE 9 once upon a time
# food_name = food.css("li").children.text.split(", ")

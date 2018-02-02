
class HealthyFoods::Scraper

  def self.scrape_index_page
    index_page = Nokogiri::HTML(open("http://www.whfoods.com/foodstoc.php"))
    food_list = []
    index_page.css(".blist").each do |line|
      line.css("li").each do |food|
        food_name = food.css("a").children.text
        food_url = food.css("a").attribute("href").value
        food_list << {name: food_name, url: food_url}
      end
    end
    food_list
  end

  def self.scrape_food_page(food_url)

  end

end



#  LINE 9 once upon a time. Didn't return what I needed but was close.
# food_name = food.css("li").children.text.split(", ")


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
    food_page = Nokogiri::HTML(open(food_url))
    food = {}
    food[:general_info] = food_page.css("p")[3]
    food_page.css("div.slot-6-7-8 div div div").each do |div|
      food[:serving_size] = div.css("div").first.text.gsub("1.00 cup(", " ").gsub(")", "")
      food[:calories] = div.css("div").last.text.gsub(/[GI]\S+\s+\S+\s\S+/, "")
    end
    food
  end

end



#  LINE 9 once upon a time. Didn't return what I needed but was close.
# food_name = food.css("li").children.text.split(", ")

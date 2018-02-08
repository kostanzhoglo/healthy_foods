
class HealthyFoods::Scraper

  def self.scrape_index_page
    index_page = Nokogiri::HTML(open("http://www.whfoods.com/foodstoc.php"))
    food_list = []
    index_page.css(".blist").collect do |line|
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
    food[:general_info] = food_page.css("p")[3, 2].text
    # food_page.css("div.slot-6-7-8 div div div").each do |div|
    #   food[:serving_size] = div.css("div").text.gsub("1.00 cup(", " ").gsub(")", "")
    #   food[:calories] = div.css("div").text.gsub(/.+[)]/, "").gsub(/[GI]\S+\s+\S+\s\S+/, "")
    #   binding.pry
    # end
    food[:serving_size] = food_page.css("div.slot-6-7-8 div div div div")[0].text.gsub(/.+[(]|[)]/, "")
    food[:calories] = food_page.css("div.slot-6-7-8 div div div div")[1].text.gsub(/[Calories: ]|[GI].+/, "")
      # ATTEMPT 2    (/.+[)]|[GI]\S+\s+\S+\s\S+/, "")
      # ATTEMPT 1  .gsub(/[GI]\S+\s+\S+\s\S+/, "")
    food
  end

end

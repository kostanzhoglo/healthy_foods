
class HealthyFoods::Scraper

  def self.scrape_index_page(index_url)
    index_page = Nokogiri::HTML(open(index_url))
  end

  def self.scrape_food_page(food_url)

end

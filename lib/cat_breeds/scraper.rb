class CatBreeds::Scraper

  def self.scrape 
    @doc = Nokogiri::HTML(open("https://cattime.com/cat-breeds"))
    @scraping_block = @doc.css("div.listingByBlockContainer div.categoryBlock")
  end

  def self.scrape_product
        @scraping_block.each do |ele|
        name = ele.css("a.desc").text.strip
        series = ele.css("div.sub ul li").text.strip
        product = PumpSelection::Product.new(name, series)
        CatBreeds::Product.all << product
        # binding.pry
    end
  end
end
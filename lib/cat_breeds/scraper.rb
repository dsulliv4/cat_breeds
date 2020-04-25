class CatBreeds::Scraper
  def self.scrape_breeds
    doc = Nokogiri::HTML(open("https://cattime.com/cat-breeds"))
    doc.css('.article-crumbs .list-item-title').map do |item|
      breed_name = item.text 
      breed_url = item.attributes['href'].value

       CatBreeds::Breeds.new(breed_name, breed_url)
    end
  end

   def self.scrape_breed_info(url)
    doc = Nokogiri::HTML(open(url))
    doc.css('.breeds-single-intro p:first').text
  end
end


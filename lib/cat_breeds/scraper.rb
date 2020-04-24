CatBreeds::Scraper

def self.scrape_breeds
  doc = Nokogiri::HTML (open("https:cattime.com/cat-breeds"))
  cat_breeds = doc.search(".list-item")
  
  cat_breeds.each do |breed|
    breed_name = breed.search("").text.strip
    breed_url = breed.search("").text.strip
  
  #returns breed 
  
  chosen_breed = Breeds.new(breed_name,breed_url)
  chosen_breed
  
  
  
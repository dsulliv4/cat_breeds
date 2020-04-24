class Breeds
  attr_accessor :name, :url 

@@breeds =[]

  def self.scraper
   Scraper.scrape_breeds
    @@breeds 
  end 

def initialize (breed_name, breed_url)
  @name = breed_name
  @url = breed_url 

save
end 

def save 
  @@breeds << self 
end 

def self.all 
  @@breeds
end 



  
  
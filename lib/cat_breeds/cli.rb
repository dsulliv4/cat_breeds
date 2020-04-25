module CatBreeds
  class Cli 
    def call
      puts "__________________________________________________________________"
      puts " "
      puts "---------------- Welcome to the Cat Catalogue -------------------"
      puts "__________________________________________________________________"
        sleep (2)
      puts "Please choose one of the following options"
      puts "***************************************"

      puts " __ Please type 'show list' for the full list of cat breeds"
      
      puts " __ Type 'close' to exit the application"

      input = gets.chomp 

      if input == 'show list'
        puts "All breeds"

        CatBreeds::Scraper.scrape_breeds
        CatBreeds::Breeds.all.each.with_index do |breed, index|
          puts "#{index} - #{breed.name}"
        end

        print 'Please select a breed: '
        breed = gets.chomp.to_i 
        selected_breed = CatBreeds::Breeds.all[breed]


        puts "You selected #{selected_breed.name}"
        puts "Getting breed info"

        breed_info = CatBreeds::Scraper.scrape_breed_info(selected_breed.url)
        puts breed_info

      elsif input = "close"

        exit
      end
    
    
    end
  end 
end

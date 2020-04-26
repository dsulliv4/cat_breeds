module CatBreeds
  class Cli 
    def call
      welcome 
      puts "   "
      user_input
    end

      def welcome
      puts "__________________________________________________________________"
      puts " "
      puts "---------------- Welcome to the Cat Catalogue -------------------"
      puts "__________________________________________________________________"
        sleep (2)
      puts "Please choose one of the following options"
      puts "***************************************"

      puts " __ Please type 'show list' for the full list of cat breeds"
      
      puts " __ Type 'close' to exit the application"
    end 

def user_input
   puts "Please enter your input below this line"
   puts "***************************************"
   puts "         "
      input = gets.strip.downcase 

      
      if input == "show list"
        puts "All of the amazing cat breeds:"
          list_breeds
          select_breed
          another_breed
     
      elsif input == "close"
      puts "Thanks for stopping by. Goodbye now!"
      exit
    end
  end 


      
     def another_breed
        puts "**************************"
        puts "Would you like to learn about another cat breed? Enter Y/N"

        input = gets.strip.downcase

          if input == "y"
            puts "     "
             list_breeds
             select_breed
             another_breed 

          elsif input == "n"
          puts "Thanks for stopping by. Goodbye now!"
          sleep (1) 
          exit
      end 
   end 

 
    
   def list_breeds
        CatBreeds::Scraper.scrape_breeds
        CatBreeds::Breeds.all.each.with_index do |breed, index|
          puts "#{index + 1} - #{breed.name}"
    end 

  def select_breed

    print 'Please select a breed: '
     breed = gets.chomp.to_i 
     selected_breed = CatBreeds::Breeds.all[breed]


     puts "You selected #{selected_breed.name}"
     puts "Getting breed info"

      breed_info = CatBreeds::Scraper.scrape_breed_info(selected_breed.url)
    puts breed_info
 end
end 
end
end 

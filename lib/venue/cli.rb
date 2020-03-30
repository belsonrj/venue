class VenueTime::CLI

  def call 
    @venues = VenueTime::CLI::Scraper
    VenueTime::CLI::Scraper.scrape_venue
    showtime
    options
    menu
    goodbye
  end
  
  def options 
    puts "To read more about a venue enter the corresponding number".green
    puts "To see venues again, enter 'venues'".green
    puts "To exit, type 'exit'.".red
    puts "What's it gonna' be?".blue
  end
    
  def menu
    input = nil 
    while input != "exit"
      input = gets.strip.downcase
 #     case input
      if input.to_i > 0 
         VenueTime::CLI::Scraper.display_info(input)
      else
        "Try again".red
      end
    end
  end
  
  def showtime
    puts "Top 5 Venues to see indie artists around Philadelphia!".upcase.blue
    VenueTime::CLI::Scraper.all.each.with_index(1) do |show, i|
      puts "#{i}. #{show.name}. located at #{show.address}".yellow 
    end
  end
  
  def goodbye
    puts "Keep supporting indie music!".blue
  end
end
class VenueTime::CLI

  def call 
    VenueTime::CLI::Scraper.scrape_venue
    showtime
    options
    menu
    goodbye
  end
  
  def options 
    puts "To read more about a venue enter the corresponding number".green
    puts "To see venues again, enter 'venues'".green
    puts "To exit, type 'exit'.".red.bold
    puts "What's it gonna' be?".blue
  end
    
  def menu
    input = nil 
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "venues"
        showtime
      end
      if input.to_i.between?(1,5) 
         VenueTime::CLI::Showtime.display_info(input)
      else
        puts "Type 'venues' to see options again".red
      end
    end
  end
  
  def showtime
    puts "Top 5 Venues to see indie artists around Philadelphia!".upcase.blue.on_red.bold
    VenueTime::CLI::Showtime.all.each.with_index(1) do |show, i|
      puts "#{i}. #{show.name}".yellow 
    end
  end
  
  def goodbye
    puts "Keep supporting indie music!".blue.bold
  end
end
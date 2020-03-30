class VenueTime::CLI

  def call 
    #VenueTime::CLI::Scraper.get_venue
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
      case input
      when "artists"
        index_artists
      when "venues"
        index_venues
      when "showtime"
        showtime
      when "venues"
        showtime
      else
        puts "Try again".red
      end
    end
  end
  
  def index_venues
    puts "Current collection of venues!".blue
    @venue = VenueTime::CLI::Venue.venues
    @venue.each.with_index(1) do |a, i|
      puts "#{i}. #{a}".green
    end
  end
  
  
  def index_artists
    puts "Current collection of artists!".blue
    @artist = VenueTime::CLI::Artist.artists
    @artist.each.with_index(1) do |a, i|
      puts "#{i}. #{a}".yellow
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
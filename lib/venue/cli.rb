class VenueTime::CLI

  def call 
    VenueTime::CLI::Scraper.scrape
    VenueTime::CLI::Scraper.scrape_show
    showtime
    options
    menu
    goodbye
  end
  
  def options 
    puts "To read more about an upcoming show enter the corresponding number".green
    puts "To see shows again, enter 'shows'".green
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
      when "shows"
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
    puts "Top Upcoming Concerts in Philadelphia!".upcase.blue
    VenueTime::CLI::Scraper.all.each.with_index(1) do |show, i|
      puts "#{i}. #{show.name}".yellow 
    end
  end
  
  def goodbye
    puts "Keep supporting music!".blue
  end
end
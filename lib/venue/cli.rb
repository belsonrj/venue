class VenueTime::CLI

  def call 
    options
    menu
    goodbye
  end
  
  def options 
    puts "Welcome to your live show index and local venue locator!".upcase.blue
    puts "To list your artist collection, enter 'artists'.".yellow
    puts "To list venues you've visited, enter 'venues'.".yellow
    puts "To see the top upcoming live shows in Philly, enter 'showtime'.".yellow
    puts "To see menu again, enter 'menu'".yellow
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
      when "menu"
        options
      else
        puts "Try again".red
      end
    end
  end
  
  def index_venues
    puts "Current collection of venues!".blue
    @venue = VenueTime::CLI::Index.venues
    @venue.each.with_index(1) do |a, i|
      puts "#{i}. #{a}".green
    end
  end
  
  
  def index_artists
    puts "Current collection of artists!".blue
    @artist = VenueTime::CLI::Index.artists
    @artist.each.with_index(1) do |a, i|
      puts "#{i}. #{a}".yellow
    end
  end
  
  def showtime
    puts "Top Upcoming Concerts in Philadelphia!".blue
    @shows = VenueTime::CLI::Showtime.scrape_web
    @shows.each.with_index(1) do |show, i|
      puts "#{i}. #{show}.".yellow 
    end
  end
  
  def goodbye
    puts "Keep supporting music!".blue
  end
end
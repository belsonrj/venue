class VenueTime::CLI

  def call 
    options
    menu
    goodbye
  end
  
  def options 
    puts "Welcome to your live show index and local venue locator!"
    puts "To list your artist collection, enter 'artists'."
    puts "To list venues you've visited, enter 'venues'."
    puts "To see the top upcoming live shows in Philly, enter 'showtime'."
    puts "To see menu again, enter 'menu'"
    puts "To exit, type 'exit'."
    puts "What's it gonna' be?"
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
        puts "Try again"
      end
    end
  end
  
  def index_venues
    puts "Current collection of venues!"
    @venue = VenueTime::CLI::Index.venues
    @venue.each.with_index(1) do |a, i|
      puts "#{i}. #{a}"
    end
  end
  
  
  def index_artists
    puts "Current collection of artists!"
    @artist = VenueTime::CLI::Index.artists
    @artist.each.with_index(1) do |a, i|
      puts "#{i}. #{a}"
    end
  end
  
  def showtime
    puts "Top Upcoming Concerts in Philadelphia!"
    @shows = VenueTime::CLI::Showtime.scrape_shows
    @shows.each.with_index(1) do |show, i|
      puts "#{i}. #{show}." 
    end
  end
  
  def goodbye
    puts "Keep supporting music!"
  end
end
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
    puts "To list live performers you've met, enter 'nice to meet me'."
    puts "To see live shows today, enter 'showtime'."
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
        Artist.all
      when "venues"
        Venue.all
      when "nice to meet me"
        nice_to_meet_me
      when "showtime"
        showtime
      when "menu"
        options
      else
        puts "Try again"
      end
    end
  end
  
  def showtime
    puts "Live shows for Today's date!"
    @shows = VenueTime::CLI::Showtime.today
    @shows.each.with_index(1) do |show, i|
      puts "#{i}. #{show.name}. Playing tonight at #{show.venue}."
    end
  end
  
  def goodbye
    puts "Keep supporting music!"
  end
end
class VenueTime::CLI

  def call 
    options
    menu
    goodbye
  end
  
  def options 
    puts "Welcome to your live show index and local venue locator!"
    puts "To list your artist collection, enter 'list artists'."
    puts "To list venues you've visited, enter 'list venues'."
    puts "To list live performers you've met, enter 'nice to meet me'."
    puts "To search for local venues by zip code, enter 'showtime'."
    puts "To exit, type 'exit'."
    puts "What's it gonna' be?"
  end
    
  def menu
    input = nil 
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "list artists"
        Artist.all
      when "list venues"
        Venue.all
      when "nice to meet me"
        nice_to_meet_me
      when "showtime"
        showtime
      end
    end
  end
  
  def goodbye
    puts "Keep supporting music!"
  end
end
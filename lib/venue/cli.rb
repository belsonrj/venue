class VenueTime::CLI

  def call 
    menu
    goodbye
  end
    
  def menu
    puts "Welcome to your live show index and local venue locator!"
    puts "To list your artist collection, enter 'list artists'."
    puts "To list venues you've visited, enter 'list venues'."
    puts "To list live performers you've met, enter 'nice to meet me'."
    puts "To search for local venues by zip code, enter 'showtime'."
    puts "To exit, type 'exit'."
    puts "What's it gonna be?"
    input = nil
    while input != exit 
      input = gets.strip.downcase
      case input
      when "list artists"
        Artists.all
      when "list venues"
        Venues.all
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
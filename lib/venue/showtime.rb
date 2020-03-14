class VenueTime::CLI::Showtime
  
  def self.today
    puts "Glassjaw is playing at the TLA"
    
    show_1 = self.new 
    show_1.name = "Lauryn Hill"
    show_1.venue = "Tower Theatre"
    
    show_2 = self.new 
    show_2.name = "The Fray"
    show_2.venue = "Xcite Center"
    
    show_3 = self.new 
    show_3.name = "Styx"
    show_3.venue = "Penns Peak"
    
    [show_1, show_2, show_3]
  end
end
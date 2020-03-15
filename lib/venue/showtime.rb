class VenueTime::CLI::Showtime
  attr_accessor :name, :venue
  
  @@all = []
  
  def initialize
    @name = name
    @venue = venue
    @@all << self
  end
  
  def self.today
    #puts "Live Shows for today's date!"
    #@@all.each.with_index(1) do |name, venue, i|
    #  puts "#{i}. #{.name}. Playing tonight at #{venue}."
    #end
    
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
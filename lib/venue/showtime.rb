class VenueTime::CLI::Showtime
  attr_accessor :name, :venue
  
  @@all = []
  
  def initialize
    @name = name
    @venue = venue
    @@all << self
  end
  
  def self.today
    self.scrape_shows

  end
  
  def self.scrape_shows
    shows = []
    shows << self.scrape_web
    
    show_1 = self.new 
    show_1.name = "Lauryn Hill"
    show_1.venue = "Tower Theatre"
    
    show_2 = self.new 
    show_2.name = "The Fray"
    show_2.venue = "Xcite Center"
    
    show_3 = self.new 
    show_3.name = "Styx"
    show_3.venue = "Penns Peak"
    
    shows
  end
  
  def self.scrape_web
    doc = Nokogiri
end
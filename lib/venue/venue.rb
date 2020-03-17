class VenueTime::CLI::Venue
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def self.all
    @@all
  end
  
  def self.venues
    @venues = ["Festival Pier", "Tweeter Center", "The TLA", "Underground Arts", "Electric Factory", "Union Transfer", "Mann Center", "Wells Fargo", "Spectrum", "Bonnaroo", "Firefly Festival", "Riot Fest", "Fillmore, The", "Kimmel Center, The", "Boot and Saddle", "World Cafe Live", "Tower Theatre, The", "Milkboy", "The Fire", "Johnny Brenda's", "Ardmore Music Hall, The", "The Met", "Voltage Lounge", "The Foundry", "Merriam Theatre", "Black Cat", "Starland Ballroom", "Keswick Theatre", "The Barbary", "Scottish Rite Auditorium", "Hershey Theatre", "Hollywood Bowl, The", "Electric Ballroom", "Bowery Ballroom", "Terminal 5", "Mercury Lounge", "Music Hall of Williamsburg", "Radio City Music Hall", "Webster Hall", "Sony Hall", "Stone Pony", "Asbury Park Convention Hall"]
    @venues
  end
  
  def artists
    Artist.all.select {|a| a.venue == self}
  end 
  
  def self.count
    @@all.size 
  end
  
end
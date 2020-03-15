class VenueTime::CLI::Venue
  attr_accessor :name, :zip_code
  
  @@all = []
  
  def initialize(name, zip_code)
    @name = name 
    @zip_code = zip_code
    @artists = []
    @@all << self
  end 
  
  def self.all
    puts "many venues"
  end
  
  def artists
    Artist.all.select {|a| a.venue == self}
  end 
  
  def self.count
    @@all.size 
  end
  
end
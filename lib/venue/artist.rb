class VenueTime::CLI::Artist
  attr_accessor :name, :venue 
  
  @@all = []
  
  def initialize(name, met)
    @name = name 
    @met = met
    @@all << self 
  end 
  
  def venues 
    self.all.map do |artist|
      artist.venue
  end
  
  def self.all 
    @@all
  end
  
  def self.count
    @@all.size 
  end
  
end
end
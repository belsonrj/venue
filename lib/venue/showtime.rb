class VenueTime::CLI::Showtime
  attr_accessor :name, :address, :info

  @@all = []
  
  def initialize
    @name = name
    @address = address
    @info = info
  end
  
  def self.all
    @@all
  end
  
end
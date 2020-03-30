class VenueTime::CLI::Showtime
  attr_accessor :name, :address, :info

  @@all = []
  
  def initialize
    @name = name
    @address = address
    @info = info
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.display_info(input)
    index = input.to_i - 1
    puts "#{@@all[index].info}".yellow.bold
  end
end
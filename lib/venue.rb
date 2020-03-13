class Venue 
  attr_accessor :name, :zip_code
  attr_reader: :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def self.all
    @@all
  end
  
  def artists
    Artist.all.select {|a| a.venue == self}
  end 
  
  def self.count
    @@all.size 
  end
  
end
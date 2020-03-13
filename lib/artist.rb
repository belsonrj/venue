class Artist 
  attr_accessor :name, :met, :venue 
  
  @@all = []
  
  def initialize(name)
    @name = name 
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